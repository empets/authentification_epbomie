// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:grace_church/core/extension/custome_extension.dart';
// import 'package:grace_church/core/geocoding/data/datasources/nominatim_datasource.dart';
// import 'package:grace_church/core/geocoding/data/repositories/geocoding_repository_impl.dart';
// import 'package:grace_church/core/geocoding/domain/usecases/reverse_geocode_usecase.dart';
// import 'package:grace_church/core/geocoding/domain/usecases/search_location_usecase.dart';
// import 'package:grace_church/core/location/data/repositories/location_repository_impl.dart';
// import 'package:grace_church/core/location/domain/usecases/get_current_location_usecase.dart';
// import 'package:grace_church/core/map/models/map_location.dart';
// import 'package:grace_church/core/map/models/map_marker_data.dart';
// import 'package:grace_church/core/map/utils/map_constants.dart';
// import 'package:grace_church/core/map/widgets/interactive_map.dart';
// import 'package:grace_church/core/map/widgets/map_controls.dart';
// import 'package:grace_church/core/request_management/presentation/cubit/location_search/location_search_cubit.dart';
// import 'package:grace_church/core/request_management/presentation/cubit/map_location/map_location_cubit.dart';
// import 'package:grace_church/core/request_management/presentation/cubit/map_location/map_location_state.dart';
// import 'package:grace_church/core/request_management/presentation/widgets/location_denied_message.dart';
// import 'package:grace_church/core/request_management/presentation/widgets/location_permission_dialog.dart';
// import 'package:http/http.dart' as http;
// import 'package:latlong2/latlong.dart';

// enum PermissionState { notAsked, granted, denied }

// enum SheetView { form, locationSearch }

// class EligibilityTestPage extends StatelessWidget {
//   const EligibilityTestPage({super.key, required this.profile});
//   final ActiveUserProfile profile;

//   @override
//   Widget build(BuildContext context) {
//     // Create use cases
//     final datasource = NominatimDatasource(client: http.Client());
//     final geocodingRepository = GeocodingRepositoryImpl(
//       remoteDatasource: datasource,
//     );
//     const locationRepository = LocationRepositoryImpl();

//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => MapLocationCubit(
//             getCurrentLocationUsecase: GetCurrentLocationUsecase(
//               locationRepository,
//             ),
//             reverseGeocodeUsecase: ReverseGeocodeUsecase(geocodingRepository),
//           ),
//         ),
//         BlocProvider(
//           create: (context) => LocationSearchCubit(
//             searchLocationUsecase: SearchLocationUsecase(geocodingRepository),
//           ),
//         ),
//         // BlocProvider(
//         //   create: (context) =>
//         //       RequestManagementInjection.createEligibilityCubit(),
//         // ),
//       ],
//       child: _EligibilityTestPageContent(profile: profile),
//     );
//   }
// }

// class _EligibilityTestPageContent extends StatefulWidget {
//   const _EligibilityTestPageContent();

//   // final ActiveUserProfile profile;

//   @override
//   State<_EligibilityTestPageContent> createState() =>
//       _EligibilityTestPageState();
// }

// class _EligibilityTestPageState extends State<_EligibilityTestPageContent>
//     with TickerProviderStateMixin {
//   PermissionState _permissionState = PermissionState.notAsked;
//   MapLocation _selectedLocation = MapConstants.defaultLocation;
//   final DraggableScrollableController _sheetController =
//       DraggableScrollableController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//   // final PermissionPreferencesService _permissionService =
//   //     PermissionPreferencesService();

//   // Map control callbacks
//   VoidCallback? _mapZoomIn;
//   VoidCallback? _mapZoomOut;
//   VoidCallback? _mapRecenter;

//   // Track sheet extent for dynamic control positioning
//   final double _sheetExtent = 0.6;

//   // Error messages for form validation
//   String? _phoneError;
//   String? _addressError;

//   @override
//   void initState() {
//     super.initState();
//     loadRoute();

//     // Check permission preference and show dialog or fetch location
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _checkPermissionAndInitialize();
//     });

//     // Clear errors when user starts typing
//     _phoneController.addListener(() {
//       if (_phoneError != null) {
//         setState(() {
//           _phoneError = null;
//         });
//       }
//     });

//     _addressController.addListener(() {
//       if (_addressError != null) {
//         setState(() {
//           _addressError = null;
//         });
//       }
//     });
//   }

//   Future<void> _checkPermissionAndInitialize() async {
//     // Vérifier si l'utilisateur a choisi "Toujours autoriser"
//     final alwaysAllow = await _permissionService.isLocationAlwaysAllowed();

//     if (alwaysAllow) {
//       // Pas besoin de demander la permission, récupérer directement la position
//       setState(() {
//         _permissionState = PermissionState.granted;
//       });
//       if (mounted) {
//         context.read<MapLocationCubit>().fetchCurrentLocation();
//       }
//     } else {
//       // Afficher la dialogue de permission
//       _showPermissionDialog();
//     }
//   }

//   @override
//   void dispose() {
//     _sheetController.dispose();
//     _phoneController.dispose();
//     _addressController.dispose();
//     super.dispose();
//   }

//   void _showPermissionDialog() {
//     if (_permissionState != PermissionState.notAsked) return;

//     // Capture the cubit before opening dialog
//     final mapLocationCubit = context.read<MapLocationCubit>();

//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (dialogContext) => LocationPermissionDialog(
//         onAlwaysAllow: () async {
//           // Sauvegarder la préférence "Toujours autoriser"
//           await _permissionService.setAlwaysAllowLocation(true);
//           if (!mounted) return;
//           setState(() {
//             _permissionState = PermissionState.granted;
//           });
//           if (dialogContext.mounted) {
//             Navigator.of(dialogContext).pop();
//           }
//           // Fetch current location via Cubit
//           await mapLocationCubit.fetchCurrentLocation();
//         },
//         onAccept: () {
//           // Autoriser une seule fois (pas de sauvegarde)
//           setState(() {
//             _permissionState = PermissionState.granted;
//           });
//           Navigator.of(dialogContext).pop();
//           // Fetch current location via Cubit
//           mapLocationCubit.fetchCurrentLocation();
//         },
//         onDeny: () {
//           setState(() {
//             _permissionState = PermissionState.denied;
//           });
//           Navigator.of(dialogContext).pop();
//         },
//         onAskLater: () {
//           // Keep state as notAsked, just close dialog
//           Navigator.of(dialogContext).pop();
//         },
//       ),
//     );
//   }

//   void _handleAuthorize() {
//     setState(() {
//       _permissionState = PermissionState.granted;
//     });
//     // Fetch current location via Cubit
//     context.read<MapLocationCubit>().fetchCurrentLocation();
//   }

//   /// Calculate the bottom position for map controls based on sheet extent
//   double _calculateControlsBottom(double screenHeight) {
//     // Position controls 16px above the top edge of the sheet
//     return (screenHeight * _sheetExtent) + 12;
//   }

//   String distanceBetweenTowPoint(
//     double startLatitude,
//     double startLongitude,
//     double endLatitude,
//     double endLongitude,
//   ) {
//     final distances = Geolocator.distanceBetween(
//       startLatitude,
//       startLongitude,
//       endLatitude,
//       endLongitude,
//     );

//     return "${(distances / 1000).toStringAsFixed(2)} ";
//   }

//   String formatDistance(double meters) {
//     if (meters < 1000) {
//       return "${meters.round()} m";
//     } else {
//       double km = meters / 1000;
//       return "${km % 1 == 0 ? km.toInt() : km.toStringAsFixed(1)} km";
//     }
//   }

//   late MapController mapController;


//   Future<List<LatLng>> getRouteOSRM(LatLng start, LatLng end) async {
//     final url =
//         'https://router.project-osrm.org/route/v1/driving/'
//         '${start.longitude},${start.latitude};'
//         '${end.longitude},${end.latitude}'
//         '?overview=full&geometries=geojson';

//     final response = await http.get(Uri.parse(url));

//     final data = jsonDecode(response.body);

//     final List coordinates = data['routes'][0]['geometry']['coordinates'];

//     return coordinates.map<LatLng>((c) => LatLng(c[1], c[0])).toList();
//   }

//   List<LatLng> routePoints = [];

//   Future<void> loadRoute() async {
//     routePoints = await getRouteOSRM(
//       LatLng(5.345317, -4.024429),
//       LatLng(5.360000, -4.008300),
//     );
//     setState(() {});
//   }

//   // /// Calcule la distance entre deux points et retourne un texte avec unité
//   // String distanceBetweenTwoPoints(
//   //   double startLatitude,
//   //   double startLongitude,
//   //   double endLatitude,
//   //   double endLongitude,
//   // ) {
//   //   // distance en mètres
//   //   final distanceInMeters = Geolocator.distanceBetween(
//   //     startLatitude,
//   //     startLongitude,
//   //     endLatitude,
//   //     endLongitude,
//   //   );

//   //   // formate avec m ou km
//   //   return formatDistances(distanceInMeters);
//   // }

//   // /// Formate une distance en mètres ou kilomètres
//   // String formatDistances(double meters) {
//   //   if (meters < 1000) {
//   //     return "${meters.round()} mk"; // < 1 km → m
//   //   } else {
//   //     double km = meters / 1000;
//   //     return "${km % 1 == 0 ? km.toInt() : km.toStringAsFixed(1)} km"; // ≥ 1 km → km
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: MultiBlocListener(
//         listeners: [
//           BlocListener<MapLocationCubit, MapLocationState>(
//             listener: (context, state) {
//               // Update location and address when state changes
//               if (state is MapLocationSuccess) {
//                 setState(() {
//                   _selectedLocation = state.location;
//                   _addressController.text = state.address;
//                 });
//               } else if (state is MapLocationError) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('Erreur: ${state.message}'),
//                     backgroundColor: Colors.red,
//                   ),
//                 );
//               }
//             },
//           ),
//         ],
//         child: Stack(
//           children: [
//             // Map or denied message
//             if (_permissionState == PermissionState.granted)
//               InteractiveMap(
//                 initialLocation: MapLocation(
//                   latitude: double.parse(widget.profile.lat),
//                   longitude: double.parse(widget.profile.long),
//                 ),
//                 markers: [
//                   MapMarkerData(
//                     location: _selectedLocation,
//                     color: Colors.black,
//                     size: 40,
//                   ),
//                   MapMarkerData(
//                     location: MapLocation(
//                       latitude: double.parse(widget.profile.lat),
//                       longitude: double.parse(widget.profile.long),
//                     ),
//                     color: Colors.black,
//                     size: 40,
//                   ),
//                 ],
//                 // onTap: _handleMapTap,
//                 onControlsReady: (zoomIn, zoomOut, recenter) {
//                   setState(() {
//                     _mapZoomIn = zoomIn;
//                     _mapZoomOut = zoomOut;
//                     _mapRecenter = recenter;
//                   });
//                 },
//               )
//             // FlutterMap(
//             //   mapController: _mapController,
//             //   options: MapOptions(
//             //     onTap: (tapPosition, point) {
//             //       _animatedMapMove(point, 17);
//             //     },
//             //     initialCenter: LatLng(
//             //       double.parse(widget.profile.lat),
//             //       double.parse(widget.profile.long),
//             //     ),
//             //     initialZoom: 18,
//             //     maxZoom: 23,
//             //     minZoom: 16,
//             //   ),
//             //   children: [
//             //     TileLayer(
//             //       urlTemplate:
//             //           'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//             //       userAgentPackageName: 'dev.fleaflet.flutter_map.example',
//             //     ),
//             //     MarkerLayer(
//             //       alignment: Alignment.topCenter,
//             //       markers: [
//             //         Marker(
//             //           rotate: true,
//             //           // width: 100.h,
//             //           // height: 100.h,
//             //           point: LatLng(
//             //             _selectedLocation.latitude,
//             //             _selectedLocation.longitude,
//             //           ),
//             //           child: Icon(
//             //             Icons.location_history,
//             //             color: Colors.black,
//             //           ),
//             //         ),
//             //         Marker(
//             //           rotate: true,
//             //           // width: 100.h,
//             //           // height: 100.h,
//             //           point: LatLng(
//             //             double.parse(widget.profile.lat),
//             //             double.parse(widget.profile.long),
//             //           ),
//             //           child: Icon(
//             //             Icons.home_work_rounded,
//             //             size: 20.r,
//             //             color: Colors.black,
//             //           ),
//             //         ),
//             //       ],
//             //     ),
//             //     // PolylineLayer(
//             //     //   polylines: [
//             //     //     Polyline(
//             //     //       points: [
//             //     //         LatLng(
//             //     //           double.parse(widget.profile.lat),
//             //     //           double.parse(widget.profile.long),
//             //     //         ),
//             //     //         LatLng(
//             //     //           _selectedLocation.latitude,
//             //     //           _selectedLocation.longitude,
//             //     //         ),
//             //     //       ],
//             //     //       color: Colors.blue,
//             //     //       strokeWidth: 4,
//             //     //     ),
//             //     //   ],
//             //     // ),
//             //   ],
//             // )
//             else
//               LocationDeniedMessage(onAuthorize: _handleAuthorize),

//             // Back button on the left
//             if (_permissionState == PermissionState.granted)
//               Positioned(
//                 left: 16,
//                 bottom: _calculateControlsBottom(screenHeight),
//                 child: Material(
//                   elevation: 4,
//                   shape: const CircleBorder(),
//                   child: InkWell(
//                     onTap: () => Navigator.maybePop(context),
//                     borderRadius: BorderRadius.circular(24),
//                     child: Container(
//                       width: 48,
//                       height: 48,
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                       ),
//                       child: const Icon(
//                         Icons.arrow_back,
//                         color: Colors.black,
//                         size: 24,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

//             if (_permissionState == PermissionState.granted)
//               Positioned(
//                 top: 40.h,
//                 left: 0.w,
//                 right: 0.w,
//                 child: Container(
//                   padding: EdgeInsets.all(8.r),

//                   margin: EdgeInsets.symmetric(horizontal: 10.w),
//                   decoration: BoxDecoration(
//                     color: context.appColor.primaryWhite,
//                     borderRadius: BorderRadius.circular(9.r),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.2),
//                         blurRadius: 8,
//                         spreadRadius: 2,
//                         offset: Offset(0, 4), // ombre vers le bas
//                       ),
//                     ],
//                   ),

//                   child: Row(
//                     children: [
//                       Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(5.h),
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color:  context.appColor.primaryGray700.withValues(
//                                   alpha: 0.1,
//                                 ),
//                               ),
//                               color: context.appColor.primaryWhite,
//                               shape: BoxShape.circle,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.2),
//                                   blurRadius: 8,
//                                   spreadRadius: 2,
//                                   offset: Offset(0, 4), // ombre vers le bas
//                                 ),
//                               ],
//                             ),
//                             child: Icon(
//                               Icons.location_history,
//                               color:context.appColor.primaryGray700,
//                               size: 15.h,
//                             ),
//                           ),
//                           Container(
//                             width: 1.w,
//                             height: 26.h,
//                             color: Colors.black12,
//                           ),

//                           Container(
//                             padding: EdgeInsets.all(5.h),
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: context.appColor.primaryGray700
//                               ),
//                               color: context.appColor.primaryWhite,
//                               shape: BoxShape.circle,
//                               // boxShadow: [
//                               //   BoxShadow(
//                               //     color: Colors.black.withOpacity(0.2),
//                               //     blurRadius: 8,
//                               //     spreadRadius: 2,
//                               //     offset: Offset(0, 4), // ombre vers le bas
//                               //   ),
//                               // ],
//                             ),
//                             child: Icon(
//                               Icons.home_work_rounded,
//                               color: Colors.black45,
//                               size: 15.h,
//                             ),
//                           ),
//                         ],
//                       ),

//                       Container(
//                         margin: EdgeInsets.only(left: 14.w),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Profile destimation",
//                               style: GoogleFonts.roboto(
//                                 color: Colors.grey.shade600,
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                             SizedBox(height: 3.h),
//                             Text(
//                               _addressController.text.isNotEmpty
//                                   ? _addressController.text.substring(0, 8)
//                                   : '',
//                               style: GoogleFonts.roboto(
//                                 color: Colors.black,
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                               textAlign: TextAlign.right,
//                             ),
//                             Container(
//                               height: 1.h,
//                               width: 0.75.sw,
//                               color: Colors.black12,
//                               margin: EdgeInsets.symmetric(vertical: 8.h),
//                             ),
//                             Text(
//                               "Profile destimation",
//                               style: GoogleFonts.roboto(
//                                 color: Colors.grey.shade600,
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                             SizedBox(height: 3.h),
//                             Text(
//                               widget.profile.adresse.substring(0, 19),
//                               style: GoogleFonts.roboto(
//                                 color: Colors.black,
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                               textAlign: TextAlign.right,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//             // Map controls with dynamic positioning on the right
//             if (_permissionState == PermissionState.granted &&
//                 _mapZoomIn != null &&
//                 _mapZoomOut != null &&
//                 _mapRecenter != null)
//               Positioned(
//                 right: 16,
//                 bottom: _calculateControlsBottom(screenHeight),
//                 child: MapControls(
//                   onZoomIn: _mapZoomIn!,
//                   onZoomOut: _mapZoomOut!,
//                   onRecenter: _mapRecenter!,
//                 ),
//               ),

//             // Positioned(
//             //   left: 16,
//             //   bottom: 60.h,
//             //   child: Material(
//             //     elevation: 4,
//             //     shape: const CircleBorder(),
//             //     child: InkWell(
//             //       onTap: () => Navigator.maybePop(context),
//             //       borderRadius: BorderRadius.circular(24),
//             //       child: Container(
//             //         padding: EdgeInsets.symmetric(
//             //           vertical: 6.h,
//             //           horizontal: 10.w,
//             //         ),
//             //         decoration: BoxDecoration(
//             //           color: Colors.white,
//             //           borderRadius: BorderRadius.circular(7.r),
//             //           boxShadow: [
//             //             BoxShadow(
//             //               color: Colors.black.withOpacity(0.08),
//             //               blurRadius: 10,
//             //               offset: const Offset(0, 4),
//             //             ),
//             //           ],
//             //         ),
//             //         child: Row(
//             //           children: [
//             //             Icon(
//             //               Icons.directions_run_rounded,
//             //               color: Colors.black,
//             //               size: 24,
//             //             ),
//             //             Text(
//             //               "Distance ${distanceBetweenTowPoint(double.parse(widget.profile.lat), double.parse(widget.profile.long), _selectedLocation.latitude, _selectedLocation.longitude)}",
//             //               style: GoogleFonts.roboto(
//             //                 color: Colors.grey.shade600,
//             //                 fontSize: 12.sp,
//             //                 fontWeight: FontWeight.w400,
//             //               ),
//             //             ),
//             //           ],
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),

//             //   // DraggableScrollableSheet with NotificationListener
//             // NotificationListener<DraggableScrollableNotification>(
//             //   onNotification: (notification) {
//             //     setState(() {
//             //       // _sheetExtent = notification.extent;
//             //     });
//             //     return true;
//             //   },
//             //   child: DraggableScrollableSheet(
//             //     controller: _sheetController,
//             //     initialChildSize: 0.6,
//             //     minChildSize: 0.3,
//             //     maxChildSize: 0.85,
//             //     builder: (context, scrollController) {
//             //       // Switch between form and location search views
//             //       if (_currentView == SheetView.locationSearch) {
//             //         return LocationSearchContent(
//             //           scrollController: scrollController,
//             //           currentLocation: _addressController.text.isEmpty
//             //               ? 'Cocody Ivoire Golf Club'
//             //               : _addressController.text,
//             //           onLocationSelected: _handleLocationSelected,
//             //           onBack: _handleBackFromSearch,
//             //         );
//             //       }

//             //       return BlocBuilder<MapLocationCubit, MapLocationState>(
//             //         builder: (context, state) {
//             //           final isLoading = state is MapLocationLoading;

//             //           return EligibilityFormContent(
//             //             scrollController: scrollController,
//             //             phoneController: _phoneController,
//             //             addressController: _addressController,
//             //             onValidate: _handleValidate,
//             //             onManualPosition: _handleManualPosition,
//             //             onLocationSearch: _handleLocationSearch,
//             //             isLoadingLocation: isLoading,
//             //             phoneError: _phoneError,
//             //             addressError: _addressError,
//             //             isInProgress: false,
//             //           );
//             //         },
//             //       );
//             //     },
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
