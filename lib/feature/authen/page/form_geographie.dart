import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/core/geocoding/data/datasources/nominatim_datasource.dart';
import 'package:grace_church/core/geocoding/data/repositories/geocoding_repository_impl.dart';
import 'package:grace_church/core/geocoding/domain/usecases/reverse_geocode_usecase.dart';
import 'package:grace_church/core/geocoding/domain/usecases/search_location_usecase.dart';
import 'package:grace_church/core/location/data/repositories/location_repository_impl.dart';
import 'package:grace_church/core/location/domain/usecases/get_current_location_usecase.dart';
import 'package:grace_church/core/map/models/map_location.dart';
import 'package:grace_church/core/map/models/map_marker_data.dart';
import 'package:grace_church/core/map/utils/map_constants.dart';
import 'package:grace_church/core/map/widgets/interactive_map.dart';
import 'package:grace_church/core/map/widgets/map_controls.dart';
import 'package:grace_church/core/request_management/domain/entities/location_suggestion.dart';
import 'package:grace_church/core/request_management/presentation/cubit/location_search/location_search_cubit.dart';
import 'package:grace_church/core/request_management/presentation/cubit/map_location/map_location_cubit.dart';
import 'package:grace_church/core/request_management/presentation/cubit/map_location/map_location_state.dart';
import 'package:grace_church/core/request_management/presentation/widgets/eligibility_form_content.dart';
import 'package:grace_church/core/request_management/presentation/widgets/location_denied_message.dart';
import 'package:grace_church/core/request_management/presentation/widgets/location_permission_dialog.dart';
import 'package:grace_church/core/request_management/presentation/widgets/location_search_content.dart';

enum PermissionState { notAsked, granted, denied }

enum SheetView { form, locationSearch }

class FormGeographie extends StatelessWidget {
   FormGeographie({super.key,  this.lat = '',  this.lng = '', this.adresse = ''});

  final String lat;
  final String lng;
  final String adresse;

  @override
  Widget build(BuildContext context) {
    // Create use cases
    final datasource = NominatimDatasource(client: http.Client());
    final geocodingRepository = GeocodingRepositoryImpl(
      remoteDatasource: datasource,
    );
    const locationRepository = LocationRepositoryImpl();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MapLocationCubit(
            getCurrentLocationUsecase: GetCurrentLocationUsecase(
              locationRepository,
            ),
            reverseGeocodeUsecase: ReverseGeocodeUsecase(geocodingRepository),
          ),
        ),
        BlocProvider(
          create: (context) => LocationSearchCubit(
            searchLocationUsecase: SearchLocationUsecase(geocodingRepository),
          ),
        ),
        // BlocProvider(
        //   create: (context) =>
        //       RequestManagementInjection.createEligibilityCubit(),
        // ),
      ],
      child: _EligibilityTestPageContent(lat: lat, lng: lng, adresse: adresse),
    );
  }
}

class _EligibilityTestPageContent extends StatefulWidget {
  const _EligibilityTestPageContent({this.lat = '', this.lng = '', this.adresse = ''});

  final String lat;
  final String lng;
  final String adresse;

  @override
  State<_EligibilityTestPageContent> createState() =>
      _EligibilityTestPageState();
}

class _EligibilityTestPageState extends State<_EligibilityTestPageContent> {
  PermissionState _permissionState = PermissionState.notAsked;
  SheetView _currentView = SheetView.form;
  MapLocation _selectedLocation = MapConstants.defaultLocation;
  final DraggableScrollableController _sheetController =
      DraggableScrollableController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final PermissionPreferencesService _permissionService =
      PermissionPreferencesService();

     

  // Map control callbacks
  VoidCallback? _mapZoomIn;
  VoidCallback? _mapZoomOut;
  VoidCallback? _mapRecenter;

  // Track sheet extent for dynamic control positioning
  double _sheetExtent = 0.6;

  // Error messages for form validation
  String? _phoneError;
  String? _addressError;

  @override
  void initState() {
    super.initState();
    // Check permission preference and show dialog or fetch location
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkPermissionAndInitialize();
    });

    // Clear errors when user starts typing
    _phoneController.addListener(() {
      if (_phoneError != null) {
        setState(() {
          _phoneError = null;
        });
      }
    });

    _addressController.addListener(() {
      if (_addressError != null) {
        setState(() {
          _addressError = null;
        });
      }
    });
   log('Location: ${widget.lat}, ${widget.lng}');

  }

  Future<void> _checkPermissionAndInitialize() async {
    // Vérifier si l'utilisateur a choisi "Toujours autoriser"
    final alwaysAllow = await _permissionService.isLocationAlwaysAllowed();

    if (alwaysAllow) {
      // Pas besoin de demander la permission, récupérer directement la position
      setState(() {
        _permissionState = PermissionState.granted;
      });
      if (mounted) {
        context.read<MapLocationCubit>().fetchCurrentLocation();
      }
    } else {
      // Afficher la dialogue de permission
      _showPermissionDialog();
    }
  }

  @override
  void dispose() {
    _sheetController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _showPermissionDialog() {
    if (_permissionState != PermissionState.notAsked) return;

    // Capture the cubit before opening dialog
    final mapLocationCubit = context.read<MapLocationCubit>();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => LocationPermissionDialog(
        onAlwaysAllow: () async {
          // Sauvegarder la préférence "Toujours autoriser"
          await _permissionService.setAlwaysAllowLocation(true);
          if (!mounted) return;
          setState(() {
            _permissionState = PermissionState.granted;
          });
          if (dialogContext.mounted) {
            Navigator.of(dialogContext).pop();
          }
          // Fetch current location via Cubit
          await mapLocationCubit.fetchCurrentLocation();
        },
        onAccept: () {
          // Autoriser une seule fois (pas de sauvegarde)
          setState(() {
            _permissionState = PermissionState.granted;
          });
          Navigator.of(dialogContext).pop();
          // Fetch current location via Cubit
          mapLocationCubit.fetchCurrentLocation();
        },
        onDeny: () {
          setState(() {
            _permissionState = PermissionState.denied;
          });
          Navigator.of(dialogContext).pop();
        },
        onAskLater: () {
          // Keep state as notAsked, just close dialog
          Navigator.of(dialogContext).pop();
        },
      ),
    );
  }

  void _handleMapTap(MapLocation location) {
    // Delegate to Cubit for reverse geocoding
    context.read<MapLocationCubit>().handleMapTap(location);
  }

  void _handleManualPosition() {
    // Collapse the sheet to show more map
    _sheetController.animateTo(
      0.3,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _handleValidate() {
    // Validation des champs
    final phoneNumber = _phoneController.text.trim();
    final address = _addressController.text.trim();

    // Réinitialiser les erreurs
    setState(() {
      _phoneError = null;
      _addressError = null;
    });

    var hasError = false;

    // Vérifier que le numéro de téléphone n'est pas vide
    if (phoneNumber.isEmpty) {
      setState(() {
        _phoneError = 'Veuillez renseigner votre numéro de téléphone';
      });
      hasError = true;
    }
    // Vérifier le format du numéro de téléphone
    else {
      // Vérifier si le numéro ne commence pas par 07
      if (!phoneNumber.isValidContact()) {
        setState(() {
          _phoneError = 'Veuillez renseigner un numéro Orange';
        });
        hasError = true;
      }
      // Vérifier si le numéro n'a pas 10 chiffres
      else if (phoneNumber.length != 10 ||
          !RegExp(r'^\d+$').hasMatch(phoneNumber)) {
        setState(() {
          _phoneError = 'Le numéro doit contenir exactement 10 chiffres';
        });
        hasError = true;
      }
    }

    // Vérifier que l'adresse n'est pas vide
    if (address.isEmpty) {
      setState(() {
        _addressError = 'Veuillez sélectionner une adresse';
      });
      hasError = true;
    }

    // Vérifier que les coordonnées GPS sont valides
    if (_selectedLocation.latitude == 0 && _selectedLocation.longitude == 0) {
      setState(() {
        _addressError = 'Veuillez sélectionner une position sur la carte';
      });
      hasError = true;
    }

    // Si des erreurs existent, ne pas continuer
    if (hasError) return;

    // // Appeler l'API de vérification d'éligibilité
    // context.read<EligibilityCubit>().checkEligibility(
    //       latitude: _selectedLocation.latitude,
    //       longitude: _selectedLocation.longitude,
    //     );
  }

  void _handleAuthorize() {
    setState(() {
      _permissionState = PermissionState.granted;
    });
    // Fetch current location via Cubit
    context.read<MapLocationCubit>().fetchCurrentLocation();
  }

  void _handleLocationSearch() {
    setState(() {
      _currentView = SheetView.locationSearch;
    });
    // Use WidgetsBinding to ensure the sheet is built before animating
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_sheetController.isAttached) {
        _sheetController.animateTo(
          0.85,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _handleBackFromSearch() {
    setState(() {
      _currentView = SheetView.form;
    });
    // Use WidgetsBinding to ensure the sheet is built before animating
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_sheetController.isAttached) {
        _sheetController.animateTo(
          0.6,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }
   


  void _handleLocationSelected(LocationSuggestion suggestion) {
    // Update address via Cubit
    if (suggestion.latitude != null && suggestion.longitude != null) {
      context.read<MapLocationCubit>().setLocationFromSearch(
        latitude: suggestion.latitude!,
        longitude: suggestion.longitude!,
        address: suggestion.displayName,
      );
    }

    setState(() {
      _currentView = SheetView.form;
    });
    _sheetController.animateTo(
      0.2,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  /// Calculate the bottom position for map controls based on sheet extent
  double _calculateControlsBottom(double screenHeight) {
    // Position controls 16px above the top edge of the sheet
    return (screenHeight * _sheetExtent) + 12;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<MapLocationCubit, MapLocationState>(
            listener: (context, state) {
              // Update location and address when state changes
              if (state is MapLocationSuccess) {
                setState(() {
                  _selectedLocation = state.location;
                  _addressController.text = state.address;
                });
              } else if (state is MapLocationError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Erreur: ${state.message}'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
          ),
        
        ],
        child: Stack(
          children: [
            // Map or denied message
            if (_permissionState == PermissionState.granted)
              InteractiveMap(
                initialLocation: (widget.lat == '' && widget.lng == '')? _selectedLocation : MapLocation(
                      latitude: double.parse(widget.lat),
                      longitude: double.parse(widget.lng),
                    ),
                markers: [
                  if(widget.lat == '' && widget.lng == '')
                  MapMarkerData(
                    location: _selectedLocation,
                    color: context.appColor.primaryBlue,
                    size: 40,
                  ),


                  if(widget.lat.trim().isNotEmpty && widget.lng.trim().isNotEmpty)
                    MapMarkerData(
                    location: MapLocation(
                      latitude: double.parse(widget.lat),
                      longitude: double.parse(widget.lng),
                    ),
                    color: context.appColor.primaryBlue,
                    size: 40,
                  ),
                  
                ],
                onTap: _handleMapTap,
                onControlsReady: (zoomIn, zoomOut, recenter) {
                  setState(() {
                    _mapZoomIn = zoomIn;
                    _mapZoomOut = zoomOut;
                    _mapRecenter = recenter;
                  });
                },
              )
            else
              LocationDeniedMessage(onAuthorize: _handleAuthorize),

            // Back button on the left
            if (_permissionState == PermissionState.granted)
              Positioned(
                left: 16,
                bottom: _calculateControlsBottom(screenHeight),
                child: Material(
                  elevation: 4,
                  shape: const CircleBorder(),
                  child: InkWell(
                    onTap: () => Navigator.maybePop(
                      context,
                      _addressController.text ,
                    ),
                    borderRadius: BorderRadius.circular(24),
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),

            // Map controls with dynamic positioning on the right
            if (_permissionState == PermissionState.granted &&
                _mapZoomIn != null &&
                _mapZoomOut != null &&
                _mapRecenter != null)
              Positioned(
                right: 16,
                bottom: _calculateControlsBottom(screenHeight),
                child: MapControls(
                  onZoomIn: _mapZoomIn!,
                  onZoomOut: _mapZoomOut!,
                  onRecenter: _mapRecenter!,
                ),
              ),

            // DraggableScrollableSheet with NotificationListener
            if(widget.lat == '' && widget.lng == "")
            NotificationListener<DraggableScrollableNotification>(
              onNotification: (notification) {
                setState(() {
                  _sheetExtent = notification.extent;
                });
                return true;
              },
              child: DraggableScrollableSheet(
                controller: _sheetController,
                initialChildSize: 0.6,
                minChildSize: 0.3,
                maxChildSize: 0.85,
                builder: (context, scrollController) {
                  // Switch between form and location search views
                  if (_currentView == SheetView.locationSearch) {
                    return LocationSearchContent(
                      scrollController: scrollController,
                      currentLocation: _addressController.text.isEmpty
                          ? 'Cocody Ivoire Golf Club'
                          : _addressController.text,
                      onLocationSelected: _handleLocationSelected,
                      onBack: _handleBackFromSearch,
                    );
                  }

                  return BlocBuilder<MapLocationCubit, MapLocationState>(
                    builder: (context, state) {
                      final isLoading = state is MapLocationLoading;

                      return EligibilityFormContent(
                        scrollController: scrollController,
                        phoneController: _phoneController,
                        addressController: _addressController,
                        onValidate: _handleValidate,
                        onManualPosition: _handleManualPosition,
                        onLocationSearch: _handleLocationSearch,
                        isLoadingLocation: isLoading,
                        phoneError: _phoneError,
                        addressError: _addressError,
                        isInProgress: isLoading ? true : false,
                        onTap: isLoading || _addressController.text.isEmpty
                            ? null
                            : () {
                                // Navigator.of(context).push(
                                //   fadeRoute(
                                //     FormsHomeInformation(
                                //       mapLocation: _selectedLocation,
                                //       adress: _addressController.text
                                //     ),
                                //   ),
                                // );
                              },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
