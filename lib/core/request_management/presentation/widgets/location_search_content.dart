import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/geocoding/domain/entities/geocoding_result.dart';
import '../cubit/location_search/location_search_cubit.dart';
import '../cubit/location_search/location_search_state.dart';
import '../../domain/entities/location_suggestion.dart';

class LocationSearchContent extends StatefulWidget {
  final ScrollController scrollController;
  final String currentLocation;
  final Function(LocationSuggestion) onLocationSelected;
  final VoidCallback onBack;

  const LocationSearchContent({
    super.key,
    required this.scrollController,
    required this.currentLocation,
    required this.onLocationSelected,
    required this.onBack,
  });

  @override
  State<LocationSearchContent> createState() => _LocationSearchContentState();
}

class _LocationSearchContentState extends State<LocationSearchContent> {
  final TextEditingController _searchController = TextEditingController();
  GeocodingResult? _selectedResult;

  @override
  void initState() {
    super.initState();
    _searchController.text = widget.currentLocation;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    context.read<LocationSearchCubit>().search(_searchController.text);
  }

  void _onResultTap(GeocodingResult result) {
    setState(() {
      _selectedResult = result;
      _searchController.text = result.displayName;
    });

    final suggestion = LocationSuggestion(
      name: _selectedResult!.name ?? '',
      area: _selectedResult!.displayName,
      latitude: _selectedResult!.latitude,
      longitude: _selectedResult!.longitude,
    );
    widget.onLocationSelected(suggestion);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          widget.onBack();
        }
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: ListView(
          controller: widget.scrollController,
          padding: const EdgeInsets.all(24),

          children: [
            // Header with drag handle and title
            Column(
              children: [
                // Drag handle
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Title row with back button
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: widget.onBack,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        "Indiquez votre la residence",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Search field
                TextField(
                  controller: _searchController,
                  style: GoogleFonts.roboto(
                    color: Colors.grey.shade700,
                    fontSize: 13.sp,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search, color: Colors.black),
                    labelStyle: GoogleFonts.roboto(color: Colors.grey.shade700),
                    labelText: 'Rechercher un lieu',
                    hintText: 'Ex: Cocody, Abidjan',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade700),
                    ),
                    focusColor: Colors.grey.shade700,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade700),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade700),
                    ),
                  ),
                ),
              ],
            ),

            // Results list with BLoC
            BlocBuilder<LocationSearchCubit, LocationSearchState>(
              builder: (context, state) {
                if (state is LocationSearchInitial) {
                  return Column(
                    children: [
                      SizedBox(height: 11.h),
                      Center(
                        child: Text(
                          'Tapez au moins 3 caractères pour rechercher',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                }

                if (state is LocationSearchLoading) {
                  return Column(
                    children: [
                      SizedBox(height: 16.h),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }

                if (state is LocationSearchEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 16.h),
                      Icon(
                        Icons.search_off,
                        size: 64,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Aucun résultat trouvé',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Essayez une autre recherche',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  );
                }

                if (state is LocationSearchError) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 64,
                            color: Colors.red.shade300,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Une erreur est survenue',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            state.message,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                }

                SizedBox(height: 20.h);

                if (state is LocationSearchSuccess) {
                  return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemCount: state.results.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final result = state.results[index];
                      final isSelected = _selectedResult == result;

                      return ListTile(
                        onTap: () => _onResultTap(result),
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          result.displayName,
                          style: TextStyle(
                            fontSize: 14,
                            color: isSelected
                                ? Colors.black
                                : Colors.grey.shade700,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      );
                    },
                  );
                }

                return const SizedBox.shrink();
              },
            ),

            // Validate button
          ],
        ),
      ),
    );
  }
}
