import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/constante/const.dart';
import 'package:grace_church/core/custome_widget/custome_text.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/gen/assets.gen.dart';

class ConnectivityWrapper extends StatefulWidget {
  final Widget child;
  const ConnectivityWrapper({super.key, required this.child});

  @override
  State<ConnectivityWrapper> createState() => _ConnectivityWrapperState();
}

class NoInternetDialog extends StatelessWidget {
  const NoInternetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 0.3.sh),
              SvgPicture.asset(Assets.images.wifiCheck, height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 8),
                  CustomeText(
                    text: 'Pas de connexion',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              CustomeText(
                text:
                    'Vérifie ta connexion internet et réessaie. '
                    'La fenêtre se fermera automatiquement dès que tu seras reconnecté.',
                style: GoogleFonts.roboto(fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 0.3.sh),

              SizedBox(
                width: 10.h,
                height: 10.h,
                child: CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    context.appColor.primaryBlue,
                  ),
                  strokeWidth: 2,
                ),
              ),
              SizedBox(height: 10.h),
              CustomeText(
                text: 'En attente de la connexion...',
                style: GoogleFonts.roboto(
                  fontSize: 13.sp,
                  color: Colors.grey.shade300,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// AlertDialog(
//       backgroundColor: Colors.grey.shade50,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
// title: const Row(
//   children: [
//     Icon(Icons.wifi_off, color: Colors.red),
//     SizedBox(width: 8),
//     Text('Pas de connexion'),
//   ],
// ),
// content: const Text(
//   'Vérifie ta connexion internet et réessaie. '
//   'La fenêtre se fermera automatiquement dès que tu seras reconnecté.',
// ),
//     );

Future<bool> hasRealInternet() async {
  try {
    final result = await InternetAddress.lookup(
      'google.com',
    ).timeout(const Duration(seconds: 5));
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } catch (_) {
    return false;
  }
}

class _ConnectivityWrapperState extends State<ConnectivityWrapper> {
  late StreamSubscription<List<ConnectivityResult>> _subscription;
  bool _dialogVisible = false;
  Timer? _retryTimer;

  @override
  void initState() {
    super.initState();

    // Vérification initiale
    _checkRealInternet();

    // À chaque changement de réseau, on re-vérifie
    _subscription = Connectivity().onConnectivityChanged.listen((_) {
      _checkRealInternet();
    });
  }

  Future<void> _checkRealInternet() async {
    final bool hasInternet = await hasRealInternet();

    if (!hasInternet && !_dialogVisible) {
      _dialogVisible = true;
      _startRetryTimer(); // Vérifie toutes les 3s automatiquement
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final ctx = navigatorKey.currentContext;
        if (ctx == null) return;
        showDialog(
          context: ctx,
          barrierDismissible: false,
          builder: (_) => const NoInternetDialog(),
        );
      });
    } else if (hasInternet && _dialogVisible) {
      _dialogVisible = false;
      _retryTimer?.cancel();
      navigatorKey.currentState?.pop();
    }
  }

  // Vérifie toutes les 3 secondes si internet est revenu
  void _startRetryTimer() {
    _retryTimer?.cancel();
    _retryTimer = Timer.periodic(const Duration(seconds: 3), (_) async {
      final bool hasInternet = await hasRealInternet();
      if (hasInternet && _dialogVisible) {
        _dialogVisible = false;
        _retryTimer?.cancel();
        navigatorKey.currentState?.pop();
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    _retryTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
