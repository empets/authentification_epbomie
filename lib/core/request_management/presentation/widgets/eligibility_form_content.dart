import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/extension/custome_extension.dart';

class EligibilityFormContent extends StatelessWidget {
  const EligibilityFormContent({
    super.key,
    required this.scrollController,
    required this.phoneController,
    required this.addressController,
    required this.onValidate,
    required this.onManualPosition,
    required this.onLocationSearch,
    this.isLoadingLocation = false,
    this.phoneError,
    this.addressError,
    this.onTap,
    required this.isInProgress,
  });
  final ScrollController scrollController;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final VoidCallback onValidate;
  final VoidCallback onManualPosition;
  final VoidCallback onLocationSearch;
  final bool isLoadingLocation;
  final String? phoneError;
  final String? addressError;
  final void Function()? onTap;
  final bool isInProgress;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: ListView(
        controller: scrollController,
        padding: const EdgeInsets.all(24),
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

          // Title
          const Text(
            "Recherche",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),

          // Subtitle
          Text(
            'Géolocaliser ou vous résider',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              height: 1.4,
            ),
          ),
          SizedBox(height: 28.h),

          // Address field
          TextField(
            controller: addressController,
            keyboardType: TextInputType.streetAddress,
            maxLines: 2,
            enabled: !isLoadingLocation,
            style: GoogleFonts.roboto(
              color:context.appColor.primaryGrayDark,
              fontSize: 13.sp,
            ),
            decoration: InputDecoration(
              labelText: 'Adresse',
              labelStyle: GoogleFonts.roboto(color: Colors.grey.shade700),
              hintText: isLoadingLocation
                  ? 'Récupération de votre position...'
                  : 'Ex: Cocody, Abidjan',
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
              prefixIcon: isLoadingLocation
                  ? Column(
                      children: [
                        SizedBox(height: 10.h),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: SizedBox(
                            width: 16,
                            height: 16,
                            child: Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.orange,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : const Icon(Icons.home_work_rounded),
              suffixIcon: IconButton(
                icon: Icon(Icons.my_location, color:context.appColor.primaryGrayDark),
                onPressed: isLoadingLocation ? null : onLocationSearch,
              ),
              errorText: addressError,
              errorMaxLines: 2,
            ),
          ),

          const SizedBox(height: 16),

          const SizedBox(height: 15),

          // Manual position button
          OutlinedButton.icon(
            onPressed: onManualPosition,
            icon: const Icon(Icons.location_searching),
            label: const Text('Indiquer ma position manuellement'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              side: const BorderSide(color: Colors.black),
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),

          SizedBox(height: 19.h),

          // CustomeButton(
          //   btnBackground: MyColorName.black,
          //   btnTextColor: MyColorName.white,
          //   btnText: 'Valider',
          //   btnTextSize: 14.sp,
          //   onTap: onTap,
          // ),
        ],
      ),
    );
  }
}
