import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/alert/app_alerte.dart';
import 'package:grace_church/core/custome_widget/button.dart';
import 'package:grace_church/core/custome_widget/navigate.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/injection/injection_container.dart';
import 'package:grace_church/core/moke/moke_data.dart';
import 'package:grace_church/feature/authen/domaine/usercase/signin_profile.dart';
import 'package:grace_church/feature/authen/domaine/usercase/update_profile_deviceid_usercase.dart';
import 'package:grace_church/feature/authen/page/bloc/connexion/event/signin_event.dart';
import 'package:grace_church/feature/authen/page/bloc/connexion/signing_bloc.dart';
import 'package:grace_church/feature/authen/page/bloc/connexion/state/signin_state.dart'
    show SigninState;
import 'package:grace_church/feature/dashboard/presentation/pages/dashboard_overview.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => SigningBloc(
//         createSignInProfileUsercase: getIt<CreateSignInProfileUsercase>(),
//         updateProfileDeviceIdUsercase: getIt<UpdateProfileDeviceIdUsercase>(),
//       ),
//       child: BlocListener<SigningBloc, SigninState>(
//         listener: (context, state) async {
//           if (state.status.isSuccess) {
//             Navigator.of(context).pushAndRemoveUntil(
//               fadeRoute(DashboardPage(admine: state.admine)),
//               (route) => false,
//             );
//           } else if (state.status.isFailure) {
//             return TopToast.showError(
//               context,
//               message:
//                   '${state.errorMessage} Merci de bien vouloir réessayer ou contacter le support le service support.',
//             );
//           }
//         },
//         child: Scaffold(
//           backgroundColor: C.input,
//           body: Center(
//             child: Container(
//               width: 1000,
//               height: 650,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withValues(alpha: 0.08),
//                     blurRadius: 20,
//                     offset: const Offset(0, 8),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   /// Partie gauche
//                   Expanded(
//                     flex: 4,
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         borderRadius: BorderRadius.horizontal(
//                           left: Radius.circular(20),
//                         ),
//                         gradient: LinearGradient(
//                           colors: [C.greenLight, C.sidebarMuted],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                       ),
//                       padding: const EdgeInsets.all(50),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Icon(
//                             Icons.admin_panel_settings,
//                             color: Colors.white,
//                             size: 40,
//                           ),
//                           const Spacer(),

//                           Text(
//                             "Bienvenue !",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 42,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),

//                           const SizedBox(height: 20),

//                           const Text(
//                             "Connectez-vous à votre espace afin d'accéder à toutes les fonctionnalités.",
//                             style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: 18,
//                               height: 1.6,
//                             ),
//                           ),

//                           const Spacer(),

//                           Center(
//                             child: Icon(
//                               Icons.lock_outline,
//                               size: 170,
//                               color: Colors.white.withOpacity(.8),
//                             ),
//                           ),

//                           const Spacer(),
//                         ],
//                       ),
//                     ),
//                   ),

//                   /// Partie droite
//                   Expanded(
//                     flex: 5,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 70,
//                         vertical: 50,
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Center(
//                             child: Text(
//                               "Connexion",
//                               style: TextStyle(
//                                 fontSize: 36,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),

//                           const SizedBox(height: 10),

//                           const Center(
//                             child: Text(
//                               "Entrez vos identifiants dans le cas d'un souci de connexion veuillez contacter l'équipe support.",
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontSize: 16,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),

//                           const SizedBox(height: 40),

//                           const Text(
//                             "Email",
//                             style: TextStyle(fontWeight: FontWeight.w600),
//                           ),

//                           const SizedBox(height: 8),

//                           BlocBuilder<SigningBloc, SigninState>(
//                             builder: (context, state) {
//                               return TextField(
//                                 readOnly: state.status.isInProgress
//                                     ? true
//                                     : false,
//                                 decoration: InputDecoration(
//                                   prefixIcon: Icon(
//                                     Icons.email_outlined,
//                                     color: Colors.grey.shade400,
//                                   ),
//                                   hintText: "Ex: manu@gmail.com",
//                                   errorText:
//                                       state.email.isPure || state.email.isValid
//                                       ? null
//                                       : 'aucun email renseigné',
//                                   hintStyle: const TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 14,
//                                   ),
//                                   errorBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.red,
//                                     ),
//                                   ),

//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.grey,
//                                       width: 2,
//                                     ),
//                                   ),
//                                   enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ),
//                                 onChanged: (email) {
//                                   context.read<SigningBloc>().add(
//                                     SigninEvent.changeEmail(email),
//                                   );
//                                 },
//                               );
//                             },
//                           ),

//                           const SizedBox(height: 16),

//                           Text(
//                             "Contact",
//                             style: GoogleFonts.roboto(
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           BlocBuilder<SigningBloc, SigninState>(
//                             builder: (context, state) {
//                               return TextField(
//                                 readOnly: state.status.isInProgress
//                                     ? true
//                                     : false,
//                                 decoration: InputDecoration(
//                                   prefixIcon: Icon(
//                                     Icons.phone_outlined,
//                                     color: Colors.grey.shade400,
//                                   ),
//                                   hintText: "Ex: 0788884119",
//                                   hintStyle: const TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 14,
//                                   ),
//                                   errorText:
//                                       state.contact.isPure ||
//                                           state.contact.isValid
//                                       ? null
//                                       : 'aucun contact renseigné',
//                                   errorBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.red,
//                                     ),
//                                   ),

//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.grey,
//                                       width: 2,
//                                     ),
//                                   ),
//                                   enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ),
//                                 onChanged: (contact) {
//                                   context.read<SigningBloc>().add(
//                                     SigninEvent.changeContact(contact),
//                                   );
//                                 },
//                               );
//                             },
//                           ),
//                           const SizedBox(height: 16),

//                           Text(
//                             "Mot de passe",
//                             style: GoogleFonts.roboto(
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),

//                           const SizedBox(height: 8),

//                           BlocBuilder<SigningBloc, SigninState>(
//                             builder: (context, state) {
//                               return TextField(
//                                 readOnly: state.status.isInProgress
//                                     ? true
//                                     : false,
//                                 obscureText: obscureText,
//                                 decoration: InputDecoration(
//                                   prefixIcon: Icon(
//                                     Icons.lock_outline,
//                                     color: Colors.grey.shade400,
//                                   ),
//                                   suffixIcon: GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         obscureText = !obscureText;
//                                       });
//                                     },
//                                     child: Icon(
//                                       obscureText
//                                           ? Icons.visibility_off_outlined
//                                           : Icons.visibility_outlined,
//                                       color: Colors.grey.shade400,
//                                     ),
//                                   ),
//                                   hintText: "Ex: youpassword123@#.",
//                                   errorText:
//                                       state.password.isPure ||
//                                           state.password.isValid
//                                       ? null
//                                       : 'aucun mot de passe renseigné',
//                                   errorBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.red,
//                                     ),
//                                   ),
//                                   hintStyle: const TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 14,
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.grey,
//                                       width: 2,
//                                     ),
//                                   ),
//                                   enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(12),
//                                     borderSide: const BorderSide(
//                                       color: Colors.grey,
//                                     ),
//                                   ),
//                                 ),

//                                 onChanged: (password) {
//                                   context.read<SigningBloc>().add(
//                                     SigninEvent.changePassword(password),
//                                   );
//                                 },
//                               );
//                             },
//                           ),

//                           const SizedBox(height: 30),

//                           BlocBuilder<SigningBloc, SigninState>(
//                             builder: (context, state) {
//                               return PrimaryButton(
//                                 label: "Se connecter",
//                                 fontSize: 12,
//                                 colorText: context.appColor.primaryWhite,
//                                 backgroundColor:
//                                     state.status.isInProgress || !state.isValid
//                                     ? context.appColor.primaryGray500
//                                           .withValues(alpha: 0.5)
//                                     : C.greenLight,
//                                 isLoading: state.status.isInProgress,
//                                 borderRadius: 10.r,
//                                 onPressed: state.status.isInProgress
//                                     ? null
//                                     : () {
//                                         FocusScope.of(context).unfocus();
//                                         context.read<SigningBloc>().add(
//                                           SigninEvent.submit(),
//                                         );
//                                       },
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }







// ─────────────────────────────────────────────────────────
// Breakpoints
// ─────────────────────────────────────────────────────────

class _Screen {
  static bool isMobile(BuildContext ctx) =>
      MediaQuery.of(ctx).size.width < 600;
  static bool isTablet(BuildContext ctx) =>
      MediaQuery.of(ctx).size.width >= 600 &&
      MediaQuery.of(ctx).size.width < 1024;
  static bool isDesktop(BuildContext ctx) =>
      MediaQuery.of(ctx).size.width >= 1024;
}

// ─────────────────────────────────────────────────────────
// LoginPage — responsive
// ─────────────────────────────────────────────────────────

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigningBloc(
        createSignInProfileUsercase: getIt<CreateSignInProfileUsercase>(),
        updateProfileDeviceIdUsercase: getIt<UpdateProfileDeviceIdUsercase>(),
      ),
      child: BlocListener<SigningBloc, SigninState>(
        listener: (context, state) async {
          if (state.status.isSuccess) {
            Navigator.of(context).pushAndRemoveUntil(
              fadeRoute(DashboardPage(admine: state.admine)),
              (route) => false,
            );
          } else if (state.status.isFailure) {
            TopToast.showError(
              context,
              message:
                  '${state.errorMessage} Merci de bien vouloir réessayer '
                  'ou contacter le support.',
            );
          }
        },
        child: Scaffold(
          backgroundColor: C.input,
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // ── Mobile : formulaire seul plein écran ──────────
                if (_Screen.isMobile(context)) {
                  return _MobileLayout(
                    obscureText: _obscureText,
                    onToggleObscure: () =>
                        setState(() => _obscureText = !_obscureText),
                  );
                }

                // ── Tablet : card centrée sans panneau gauche ─────
                if (_Screen.isTablet(context)) {
                  return _TabletLayout(
                    obscureText: _obscureText,
                    onToggleObscure: () =>
                        setState(() => _obscureText = !_obscureText),
                  );
                }

                // ── Desktop : deux colonnes ───────────────────────
                return _DesktopLayout(
                  obscureText: _obscureText,
                  onToggleObscure: () =>
                      setState(() => _obscureText = !_obscureText),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// DESKTOP — deux colonnes (gauche déco + droite formulaire)
// ─────────────────────────────────────────────────────────

class _DesktopLayout extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onToggleObscure;

  const _DesktopLayout({
    required this.obscureText,
    required this.onToggleObscure,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1000,
        height: 650,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 40,
              offset: const Offset(0, 16),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Row(
            children: [
              // Panneau gauche décoratif
              Expanded(
                flex: 4,
                child: _LeftPanel(),
              ),
              // Formulaire
              Expanded(
                flex: 5,
                child: _FormPanel(
                  obscureText: obscureText,
                  onToggleObscure: onToggleObscure,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// TABLET — card centrée sans panneau gauche
// ─────────────────────────────────────────────────────────

class _TabletLayout extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onToggleObscure;

  const _TabletLayout({
    required this.obscureText,
    required this.onToggleObscure,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Container(
          width: 540,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 32,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Mini bannière verte en haut
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 32,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    colors: [C.greenLight, C.sidebarMuted],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.admin_panel_settings,
                      color: Colors.white,
                      size: 32,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bienvenue !',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Connectez-vous à votre espace',
                          style: GoogleFonts.inter(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Formulaire
              _FormPanel(
                obscureText: obscureText,
                onToggleObscure: onToggleObscure,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// MOBILE — plein écran avec scroll
// ─────────────────────────────────────────────────────────

class _MobileLayout extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onToggleObscure;

  const _MobileLayout({
    required this.obscureText,
    required this.onToggleObscure,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header vert compact
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(24, 48, 24, 36),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [C.greenLight, C.sidebarMuted],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(32),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.admin_panel_settings,
                  color: Colors.white,
                  size: 36,
                ),
                const SizedBox(height: 20),
                Text(
                  'Bienvenue !',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Connectez-vous à votre espace afin\n'
                  "d'accéder à toutes les fonctionnalités.",
                  style: GoogleFonts.inter(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),

          // Formulaire
          Container(
            color: Colors.white,
            child: _FormPanel(
              obscureText: obscureText,
              onToggleObscure: onToggleObscure,
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Panneau gauche décoratif (Desktop uniquement)
// ─────────────────────────────────────────────────────────

class _LeftPanel extends StatelessWidget {
  const _LeftPanel();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [C.green, C.greenLight],
          // stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: Stack(
        children: [
          // ── Grille de points ──────────────────────────────
          Positioned.fill(
            child: ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(20)),
              child: CustomPaint(painter: _DotGridPainter()),
            ),
          ),

          // ── Cercle décoratif haut-droite ──────────────────
          Positioned(
            top: -60,
            right: -60,
            child: Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Colors.white.withOpacity(0.15),
                  Colors.transparent,
                ]),
              ),
            ),
          ),

          // ── Cercle décoratif bas-gauche ───────────────────
          Positioned(
            bottom: -40,
            left: -40,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Colors.white.withOpacity(0.08),
                  Colors.transparent,
                ]),
              ),
            ),
          ),

          // ── Contenu principal ─────────────────────────────
          Padding(
            padding: const EdgeInsets.all(44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo + nom
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.3)),
                      ),
                      child: const Icon(
                        Icons.admin_panel_settings_rounded,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Epbomie',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                // ── Illustration centrale avec badges flottants
                Center(child: _IllustrationCard()),

                const SizedBox(height: 40),

                // Titre
                Text(
                  'Bienvenue !',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Connectez-vous à votre espace afin d'accéder "
                  'à toutes les fonctionnalités de la plateforme.',
                  style: GoogleFonts.inter(
                    color: Colors.white.withOpacity(0.75),
                    fontSize: 14,
                    height: 1.7,
                  ),
                ),

                const SizedBox(height: 32),

                // ── Feature list ──────────────────────────────
                ...[
                  (Icons.verified_user_rounded,  'Authentification sécurisée'),
                  (Icons.dashboard_rounded,       'Tableau de bord en temps réel'),
                  (Icons.people_rounded,          'Gestion des membres'),
                ].map(
                  (f) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: Colors.white.withOpacity(0.15)),
                      ),
                      child: Row(
                        children: [
                          Icon(f.$1, color: Colors.white, size: 18),
                          const SizedBox(width: 12),
                          Text(
                            f.$2,
                            style: GoogleFonts.inter(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                // ── Status opérationnel ───────────────────────
                Row(
                  children: [
                    _PulseDot(),
                    const SizedBox(width: 8),
                    Text(
                      'Tous les systèmes opérationnels',
                      style: GoogleFonts.inter(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Illustration avec badges flottants
// ─────────────────────────────────────────────────────────

class _IllustrationCard extends StatelessWidget {
  const _IllustrationCard();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: Colors.white.withOpacity(0.25)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 40,
                offset: const Offset(0, 16),
              ),
            ],
          ),
          child: const Icon(
            Icons.lock_person_rounded,
            color: Colors.white,
            size: 60,
          ),
        ),
        // Badge haut-droite
        Positioned(
          top: -14,
          right: -40,
          child: _FloatingChip(
            icon: Icons.security_rounded,
            label: 'Sécurisé',
          ),
        ),
        // Badge bas-gauche
        Positioned(
          bottom: -14,
          left: -44,
          child: _FloatingChip(
            icon: Icons.person,
            label: 'Personnalisé',
          ),
        ),
      ],
    );
  }
}

class _FloatingChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FloatingChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.25)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 13),
          const SizedBox(width: 6),
          Text(
            label,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Dot grid
// ─────────────────────────────────────────────────────────

class _DotGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.06)
      ..style = PaintingStyle.fill;
    const spacing = 28.0;
    for (double x = 0; x < size.width; x += spacing) {
      for (double y = 0; y < size.height; y += spacing) {
        canvas.drawCircle(Offset(x, y), 1.5, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter _) => false;
}

// ─────────────────────────────────────────────────────────
// Pulse dot
// ─────────────────────────────────────────────────────────

class _PulseDot extends StatefulWidget {
  const _PulseDot();

  @override
  State<_PulseDot> createState() => _PulseDotState();
}

class _PulseDotState extends State<_PulseDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c;
  late final Animation<double> _a;

  @override
  void initState() {
    super.initState();
    _c = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900))
      ..repeat(reverse: true);
    _a = CurvedAnimation(parent: _c, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _a,
      builder: (_, __) => Container(
        width: 7,
        height: 7,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.5 + _a.value * 0.5),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Formulaire partagé (tous les layouts)
// ─────────────────────────────────────────────────────────

class _FormPanel extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onToggleObscure;
  final EdgeInsets padding;

  const _FormPanel({
    required this.obscureText,
    required this.onToggleObscure,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titre
          Center(
            child: Text(
              'Connexion',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1E1E1E),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Sous-titre
          Center(
            child: Text(
              "Entrez vos identifiants. En cas de souci,\n"
              "contactez l'équipe support.",
              style: GoogleFonts.inter(
                color: Colors.grey.shade500,
                fontSize: 13,
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 36),

          // ── Champ Email ──────────────────────────────────
          _FieldLabel(label: 'Email'),
          const SizedBox(height: 8),
          BlocBuilder<SigningBloc, SigninState>(
            builder: (context, state) {
              return _StyledTextField(
                readOnly: state.status.isInProgress,
                prefixIcon: Icons.email_outlined,
                hintText: 'Ex: manu@gmail.com',
                keyboardType: TextInputType.emailAddress,
                errorText: state.email.isPure || state.email.isValid
                    ? null
                    : 'Aucun email renseigné',
                onChanged: (v) => context
                    .read<SigningBloc>()
                    .add(SigninEvent.changeEmail(v)),
              );
            },
          ),
          const SizedBox(height: 16),

          // ── Champ Contact ────────────────────────────────
          _FieldLabel(label: 'Contact'),
          const SizedBox(height: 8),
          BlocBuilder<SigningBloc, SigninState>(
            builder: (context, state) {
              return _StyledTextField(
                readOnly: state.status.isInProgress,
                prefixIcon: Icons.phone_outlined,
                hintText: 'Ex: 0788884119',
                keyboardType: TextInputType.phone,
                errorText: state.contact.isPure || state.contact.isValid
                    ? null
                    : 'Aucun contact renseigné',
                onChanged: (v) => context
                    .read<SigningBloc>()
                    .add(SigninEvent.changeContact(v)),
              );
            },
          ),
          const SizedBox(height: 16),

          // ── Champ Mot de passe ───────────────────────────
          _FieldLabel(label: 'Mot de passe'),
          const SizedBox(height: 8),
          BlocBuilder<SigningBloc, SigninState>(
            builder: (context, state) {
              return _StyledTextField(
                readOnly: state.status.isInProgress,
                prefixIcon: Icons.lock_outline,
                hintText: 'Ex: yourpassword123@#.',
                obscureText: obscureText,
                errorText: state.password.isPure || state.password.isValid
                    ? null
                    : 'Aucun mot de passe renseigné',
                suffixIcon: GestureDetector(
                  onTap: onToggleObscure,
                  child: Icon(
                    obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Colors.grey.shade400,
                    size: 20,
                  ),
                ),
                onChanged: (v) => context
                    .read<SigningBloc>()
                    .add(SigninEvent.changePassword(v)),
              );
            },
          ),
          const SizedBox(height: 28),

          // ── Bouton Se connecter ──────────────────────────
          BlocBuilder<SigningBloc, SigninState>(
            builder: (context, state) {
              final canSubmit =
                  !state.status.isInProgress && state.isValid;
              return _LoginButton(
                isLoading: state.status.isInProgress,
                enabled: canSubmit,
                onPressed: canSubmit
                    ? () {
                        FocusScope.of(context).unfocus();
                        context
                            .read<SigningBloc>()
                            .add(SigninEvent.submit());
                      }
                    : null,
              );
            },
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Widgets utilitaires
// ─────────────────────────────────────────────────────────

class _FieldLabel extends StatelessWidget {
  final String label;

  const _FieldLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF1E1E1E),
      ),
    );
  }
}

class _StyledTextField extends StatelessWidget {
  final bool readOnly;
  final IconData prefixIcon;
  final String hintText;
  final String? errorText;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  const _StyledTextField({
    required this.readOnly,
    required this.prefixIcon,
    required this.hintText,
    this.errorText,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: GoogleFonts.inter(fontSize: 14, color: const Color(0xFF1E1E1E)),
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon, color: Colors.grey.shade400, size: 20),
        suffixIcon: suffixIcon,
        hintText: hintText,
        errorText: errorText,
        hintStyle: GoogleFonts.inter(color: Colors.grey.shade400, fontSize: 13),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        // Bordure normale
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        // Bordure focus
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: C.greenLight, width: 1.8),
        ),
        // Bordure erreur
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 1.8),
        ),
        filled: true,
        fillColor: const Color(0xFFF8F7F9),
      ),
    );
  }
}

class _LoginButton extends StatefulWidget {
  final bool isLoading;
  final bool enabled;
  final VoidCallback? onPressed;

  const _LoginButton({
    required this.isLoading,
    required this.enabled,
    required this.onPressed,
  });

  @override
  State<_LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<_LoginButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: !widget.enabled
                ? Colors.grey.shade300
                : _hovered
                    ? C.greenLight.withOpacity(0.85)
                    : C.greenLight,
            borderRadius: BorderRadius.circular(12),
            boxShadow: widget.enabled && _hovered
                ? [
                    BoxShadow(
                      color: C.greenLight.withOpacity(0.35),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: widget.isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : Text(
                    'Se connecter',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}



// // ─────────────────────────────────────────────────────────
// // Couleurs
// // ─────────────────────────────────────────────────────────

// class C {
//   static const Color green      = Color(0xFF166534);
//   static const Color greenLight = Color(0xFF4A7055);
//   static const Color dark       = Color(0xFF1E1E1E);
//   static const Color muted      = Color(0xFF7A7887);
//   static const Color border     = Color(0x1E000000);
//   static const Color input      = Color(0xFFF8F8F8);
//   static const Color background = Color(0xFFE8EDE9);
//   static const Color error      = Color(0xFFEF4444);
// }

// // ─────────────────────────────────────────────────────────
// // LoginPage
// // ─────────────────────────────────────────────────────────

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage>
//     with SingleTickerProviderStateMixin {
//   final _formKey        = GlobalKey<FormState>();
//   final _emailCtrl      = TextEditingController();
//   final _contactCtrl    = TextEditingController();
//   final _passwordCtrl   = TextEditingController();

//   bool   _obscure   = true;
//   bool   _loading   = false;
//   bool   _success   = false;
//   late   AnimationController _fadeCtrl;
//   late   Animation<double>   _fadeAnim;

//   @override
//   void initState() {
//     super.initState();
//     _fadeCtrl = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 700),
//     )..forward();
//     _fadeAnim = CurvedAnimation(
//       parent: _fadeCtrl,
//       curve: Curves.easeOutCubic,
//     );
//   }

//   @override
//   void dispose() {
//     _emailCtrl.dispose();
//     _contactCtrl.dispose();
//     _passwordCtrl.dispose();
//     _fadeCtrl.dispose();
//     super.dispose();
//   }

//   // ── Validation ──────────────────────────────────────────
//   String? _validateEmail(String? v) {
//     if (v == null || v.isEmpty) return 'L\'email est requis';
//     if (!v.contains('@'))       return 'Email invalide';
//     return null;
//   }

//   String? _validateContact(String? v) {
//     if (v == null || v.isEmpty) return 'Le contact est requis';
//     if (v.length < 8)           return 'Numéro trop court';
//     return null;
//   }

//   String? _validatePassword(String? v) {
//     if (v == null || v.isEmpty) return 'Le mot de passe est requis';
//     if (v.length < 6)           return 'Minimum 6 caractères';
//     return null;
//   }

//   // ── Soumission ──────────────────────────────────────────
//   void _submit() async {
//     FocusScope.of(context).unfocus();
//     if (!_formKey.currentState!.validate()) return;
//     setState(() => _loading = true);
//     await Future.delayed(const Duration(milliseconds: 1800));
//     setState(() { _loading = false; _success = true; });
//   }

//   // ── Force du mot de passe ───────────────────────────────
//   int _strength(String pwd) {
//     if (pwd.length < 6) return 1;
//     if (pwd.length < 8) return 2;
//     if (RegExp(r'[^a-zA-Z0-9]').hasMatch(pwd)) return 4;
//     return 3;
//   }

//   Color _strengthColor(int s) => switch (s) {
//     1 => C.error,
//     2 => const Color(0xFFF59E0B),
//     3 => C.greenLight,
//     _ => C.green,
//   };

//   String _strengthLabel(int s) => switch (s) {
//     1 => '⚠ Trop court',
//     2 => 'Moyen',
//     3 => 'Bien',
//     _ => '✓ Excellent',
//   };

//   @override
//   Widget build(BuildContext context) {
//     final size    = MediaQuery.of(context).size;
//     final isWide  = size.width > 800;

//     return Scaffold(
//       backgroundColor: C.background,
//       body: FadeTransition(
//         opacity: _fadeAnim,
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(20),
//             child: Container(
//               constraints: const BoxConstraints(maxWidth: 900),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(28),
//                 boxShadow: [
//                   BoxShadow(
//                     color: C.green.withOpacity(0.12),
//                     blurRadius: 60,
//                     offset: const Offset(0, 20),
//                   ),
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.06),
//                     blurRadius: 20,
//                     offset: const Offset(0, 6),
//                   ),
//                 ],
//               ),
//               clipBehavior: Clip.antiAlias,
//               child: isWide
//                   ? Row(
//                       children: [
//                         Expanded(flex: 4, child: _LeftPanel()),
//                         Expanded(flex: 5, child: _buildForm()),
//                       ],
//                     )
//                   : Column(
//                       children: [
//                         _MobileHeader(),
//                         _buildForm(),
//                       ],
//                     ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // ── Formulaire principal ────────────────────────────────
//   Widget _buildForm() {
//     return AnimatedSwitcher(
//       duration: const Duration(milliseconds: 500),
//       child: _success ? _SuccessView() : _FormView(
//         key: const ValueKey('form'),
//         formKey:     _formKey,
//         emailCtrl:   _emailCtrl,
//         contactCtrl: _contactCtrl,
//         passwordCtrl:_passwordCtrl,
//         obscure:     _obscure,
//         loading:     _loading,
//         onToggleObscure: () => setState(() => _obscure = !_obscure),
//         onSubmit:    _submit,
//         validateEmail:   _validateEmail,
//         validateContact: _validateContact,
//         validatePassword:_validatePassword,
//         strength:    _strength(_passwordCtrl.text),
//         strengthColor:   _strengthColor(_strength(_passwordCtrl.text)),
//         strengthLabel:   _strengthLabel(_strength(_passwordCtrl.text)),
//         onPasswordChanged: () => setState(() {}),
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Panneau gauche décoratif
// // ─────────────────────────────────────────────────────────

// class _LeftPanel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(minHeight: 600),
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [C.green, Color(0xFF3a5c44), C.greenLight],
//           stops: [0.0, 0.5, 1.0],
//         ),
//       ),
//       child: Stack(
//         children: [
//           // Grille de points
//           Positioned.fill(child: CustomPaint(painter: _DotGridPainter())),

//           // Cercles décoratifs
//           Positioned(
//             top: -60,
//             right: -60,
//             child: Container(
//               width: 240,
//               height: 240,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(colors: [
//                   Colors.white.withOpacity(0.15),
//                   Colors.transparent,
//                 ]),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: -40,
//             left: -40,
//             child: Container(
//               width: 180,
//               height: 180,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(colors: [
//                   Colors.white.withOpacity(0.08),
//                   Colors.transparent,
//                 ]),
//               ),
//             ),
//           ),

//           // Contenu
//           Padding(
//             padding: const EdgeInsets.all(44),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Logo
//                 Row(
//                   children: [
//                     Container(
//                       width: 40,
//                       height: 40,
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.2),
//                         borderRadius: BorderRadius.circular(12),
//                         border: Border.all(
//                           color: Colors.white.withOpacity(0.3),
//                         ),
//                       ),
//                       child: const Icon(
//                         Icons.admin_panel_settings_rounded,
//                         color: Colors.white,
//                         size: 22,
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     Text(
//                       'FlutterAdmin',
//                       style: GoogleFonts.poppins(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ],
//                 ),

//                 const Spacer(),

//                 // Illustration centrale
//                 Center(
//                   child: _IllustrationCard(),
//                 ),

//                 const SizedBox(height: 40),

//                 // Titre
//                 Text(
//                   'Bienvenue !',
//                   style: GoogleFonts.poppins(
//                     color: Colors.white,
//                     fontSize: 34,
//                     fontWeight: FontWeight.w800,
//                     height: 1.1,
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 Text(
//                   "Connectez-vous à votre espace afin d'accéder à toutes les fonctionnalités de la plateforme.",
//                   style: GoogleFonts.inter(
//                     color: Colors.white.withOpacity(0.75),
//                     fontSize: 14,
//                     height: 1.7,
//                   ),
//                 ),

//                 const SizedBox(height: 32),

//                 // Features
//                 ...[
//                   (Icons.verified_user_rounded,  'Authentification sécurisée'),
//                   (Icons.dashboard_rounded,       'Tableau de bord en temps réel'),
//                   (Icons.people_rounded,          'Gestion des membres'),
//                 ].map((f) => Padding(
//                   padding: const EdgeInsets.only(bottom: 12),
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 16, vertical: 12),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.1),
//                       borderRadius: BorderRadius.circular(14),
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.15),
//                       ),
//                     ),
//                     child: Row(
//                       children: [
//                         Icon(f.$1, color: Colors.white, size: 18),
//                         const SizedBox(width: 12),
//                         Text(
//                           f.$2,
//                           style: GoogleFonts.inter(
//                             color: Colors.white.withOpacity(0.9),
//                             fontSize: 13,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )),

//                 const Spacer(),

//                 // Status
//                 Row(
//                   children: [
//                     _PulseDot(),
//                     const SizedBox(width: 8),
//                     Text(
//                       'Tous les systèmes opérationnels',
//                       style: GoogleFonts.inter(
//                         color: Colors.white.withOpacity(0.6),
//                         fontSize: 12,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Illustration centrale
// // ─────────────────────────────────────────────────────────

// class _IllustrationCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       alignment: Alignment.center,
//       children: [
//         Container(
//           width: 140,
//           height: 140,
//           decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.15),
//             borderRadius: BorderRadius.circular(32),
//             border: Border.all(color: Colors.white.withOpacity(0.25)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.15),
//                 blurRadius: 40,
//                 offset: const Offset(0, 16),
//               ),
//             ],
//           ),
//           child: const Icon(
//             Icons.lock_person_rounded,
//             color: Colors.white,
//             size: 64,
//           ),
//         ),
//         // Badge haut-droite
//         Positioned(
//           top: -14,
//           right: -32,
//           child: _FloatingChip(
//             icon: Icons.security_rounded,
//             label: 'Sécurisé',
//           ),
//         ),
//         // Badge bas-gauche
//         Positioned(
//           bottom: -14,
//           left: -36,
//           child: _FloatingChip(
//             icon: Icons.bolt_rounded,
//             label: 'BLoC/Cubit',
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _FloatingChip extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   const _FloatingChip({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.15),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.white.withOpacity(0.25)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.12),
//             blurRadius: 20,
//             offset: const Offset(0, 6),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, color: Colors.white, size: 13),
//           const SizedBox(width: 6),
//           Text(
//             label,
//             style: GoogleFonts.inter(
//               color: Colors.white,
//               fontSize: 11,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Header mobile
// // ─────────────────────────────────────────────────────────

// class _MobileHeader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.fromLTRB(28, 36, 28, 28),
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [C.green, C.greenLight],
//         ),
//         borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: 36,
//                 height: 36,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.2),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Icon(Icons.admin_panel_settings_rounded,
//                     color: Colors.white, size: 20),
//               ),
//               const SizedBox(width: 10),
//               Text(
//                 'FlutterAdmin',
//                 style: GoogleFonts.poppins(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Text(
//             'Bienvenue !',
//             style: GoogleFonts.poppins(
//               color: Colors.white,
//               fontSize: 26,
//               fontWeight: FontWeight.w800,
//             ),
//           ),
//           const SizedBox(height: 6),
//           Text(
//             "Connectez-vous pour accéder à votre espace.",
//             style: GoogleFonts.inter(
//               color: Colors.white.withOpacity(0.75),
//               fontSize: 13,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Formulaire
// // ─────────────────────────────────────────────────────────

// class _FormView extends StatelessWidget {
//   final GlobalKey<FormState> formKey;
//   final TextEditingController emailCtrl;
//   final TextEditingController contactCtrl;
//   final TextEditingController passwordCtrl;
//   final bool obscure;
//   final bool loading;
//   final VoidCallback onToggleObscure;
//   final VoidCallback onSubmit;
//   final VoidCallback onPasswordChanged;
//   final String? Function(String?) validateEmail;
//   final String? Function(String?) validateContact;
//   final String? Function(String?) validatePassword;
//   final int strength;
//   final Color strengthColor;
//   final String strengthLabel;

//   const _FormView({
//     super.key,
//     required this.formKey,
//     required this.emailCtrl,
//     required this.contactCtrl,
//     required this.passwordCtrl,
//     required this.obscure,
//     required this.loading,
//     required this.onToggleObscure,
//     required this.onSubmit,
//     required this.onPasswordChanged,
//     required this.validateEmail,
//     required this.validateContact,
//     required this.validatePassword,
//     required this.strength,
//     required this.strengthColor,
//     required this.strengthLabel,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 44),
//       child: Form(
//         key: formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Badge disponibilité
//             Container(
//               padding: const EdgeInsets.symmetric(
//                   horizontal: 14, vertical: 7),
//               decoration: BoxDecoration(
//                 color: C.green.withOpacity(0.08),
//                 borderRadius: BorderRadius.circular(99),
//                 border: Border.all(color: C.green.withOpacity(0.2)),
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   _PulseDot(),
//                   const SizedBox(width: 8),
//                   Text(
//                     'Espace administrateur',
//                     style: GoogleFonts.inter(
//                       fontSize: 11,
//                       fontWeight: FontWeight.w600,
//                       color: C.green,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Titre
//             Text(
//               'Connexion',
//               style: GoogleFonts.poppins(
//                 fontSize: 28,
//                 fontWeight: FontWeight.w700,
//                 color: C.dark,
//               ),
//             ),
//             const SizedBox(height: 6),
//             Text(
//               'Entrez vos identifiants pour accéder à votre espace.',
//               style: GoogleFonts.inter(
//                 fontSize: 13,
//                 color: C.muted,
//                 height: 1.5,
//               ),
//             ),
//             const SizedBox(height: 32),

//             // Email
//             _InputField(
//               controller: emailCtrl,
//               label: 'Adresse email',
//               hint: 'Ex: manu@gmail.com',
//               icon: Icons.email_outlined,
//               keyboardType: TextInputType.emailAddress,
//               validator: validateEmail,
//             ),
//             const SizedBox(height: 16),

//             // Contact
//             _InputField(
//               controller: contactCtrl,
//               label: 'Numéro de contact',
//               hint: 'Ex: 0788884119',
//               icon: Icons.phone_outlined,
//               keyboardType: TextInputType.phone,
//               inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//               validator: validateContact,
//             ),
//             const SizedBox(height: 16),

//             // Mot de passe
//             _InputField(
//               controller: passwordCtrl,
//               label: 'Mot de passe',
//               hint: 'Ex: yourpassword123@#.',
//               icon: Icons.lock_outline_rounded,
//               obscureText: obscure,
//               onChanged: (_) => onPasswordChanged(),
//               validator: validatePassword,
//               suffix: GestureDetector(
//                 onTap: onToggleObscure,
//                 child: Icon(
//                   obscure
//                       ? Icons.visibility_off_outlined
//                       : Icons.visibility_outlined,
//                   size: 18,
//                   color: obscure ? C.muted : C.green,
//                 ),
//               ),
//             ),

//             // Indicateur force mot de passe
//             if (passwordCtrl.text.isNotEmpty) ...[
//               const SizedBox(height: 10),
//               Row(
//                 children: List.generate(4, (i) {
//                   return Expanded(
//                     child: Container(
//                       margin: EdgeInsets.only(right: i < 3 ? 4 : 0),
//                       height: 4,
//                       decoration: BoxDecoration(
//                         color: i < strength
//                             ? strengthColor
//                             : C.border.withOpacity(0.5),
//                         borderRadius: BorderRadius.circular(99),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 strengthLabel,
//                 style: GoogleFonts.inter(
//                   fontSize: 11,
//                   color: strengthColor,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ],

//             // Mot de passe oublié
//             const SizedBox(height: 12),
//             Align(
//               alignment: Alignment.centerRight,
//               child: GestureDetector(
//                 onTap: () {},
//                 child: Text(
//                   'Mot de passe oublié ?',
//                   style: GoogleFonts.inter(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                     color: C.green,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 28),

//             // Bouton Se connecter
//             _SubmitButton(
//               loading: loading,
//               onPressed: onSubmit,
//             ),

//             const SizedBox(height: 32),

//             // Divider
//             Divider(color: C.border),
//             const SizedBox(height: 20),

//             // Badges sécurité
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _SecurityBadge(icon: '🔒', label: 'SSL / TLS'),
//                 const SizedBox(width: 20),
//                 _SecurityBadge(icon: '🛡️', label: 'RGPD'),
//                 const SizedBox(width: 20),
//                 _SecurityBadge(icon: '✅', label: 'Firebase Auth'),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Center(
//               child: GestureDetector(
//                 onTap: () {},
//                 child: RichText(
//                   text: TextSpan(
//                     style: GoogleFonts.inter(
//                         fontSize: 12, color: C.muted),
//                     children: [
//                       const TextSpan(text: 'Problème de connexion ? '),
//                       TextSpan(
//                         text: 'Contacter le support',
//                         style: TextStyle(
//                           color: C.green,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Champ de saisie stylisé
// // ─────────────────────────────────────────────────────────

// class _InputField extends StatefulWidget {
//   final TextEditingController controller;
//   final String label;
//   final String hint;
//   final IconData icon;
//   final bool obscureText;
//   final Widget? suffix;
//   final TextInputType? keyboardType;
//   final List<TextInputFormatter>? inputFormatters;
//   final String? Function(String?)? validator;
//   final void Function(String)? onChanged;

//   const _InputField({
//     required this.controller,
//     required this.label,
//     required this.hint,
//     required this.icon,
//     this.obscureText = false,
//     this.suffix,
//     this.keyboardType,
//     this.inputFormatters,
//     this.validator,
//     this.onChanged,
//   });

//   @override
//   State<_InputField> createState() => _InputFieldState();
// }

// class _InputFieldState extends State<_InputField> {
//   bool _focused = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Label
//         AnimatedDefaultTextStyle(
//           duration: const Duration(milliseconds: 200),
//           style: GoogleFonts.inter(
//             fontSize: 12,
//             fontWeight: FontWeight.w600,
//             color: _focused ? C.green : C.dark,
//           ),
//           child: Text(widget.label),
//         ),
//         const SizedBox(height: 7),

//         // Champ
//         Focus(
//           onFocusChange: (v) => setState(() => _focused = v),
//           child: AnimatedContainer(
//             duration: const Duration(milliseconds: 200),
//             decoration: BoxDecoration(
//               color: _focused ? Colors.white : C.input,
//               borderRadius: BorderRadius.circular(14),
//               border: Border.all(
//                 color: _focused
//                     ? C.green
//                     : C.border,
//                 width: _focused ? 1.5 : 1,
//               ),
//               boxShadow: _focused
//                   ? [
//                       BoxShadow(
//                         color: C.green.withOpacity(0.12),
//                         blurRadius: 0,
//                         spreadRadius: 3,
//                       ),
//                     ]
//                   : [],
//             ),
//             child: TextFormField(
//               controller:       widget.controller,
//               obscureText:      widget.obscureText,
//               keyboardType:     widget.keyboardType,
//               inputFormatters:  widget.inputFormatters,
//               validator:        widget.validator,
//               onChanged:        widget.onChanged,
//               style: GoogleFonts.inter(
//                 fontSize: 14,
//                 color: C.dark,
//               ),
//               decoration: InputDecoration(
//                 hintText: widget.hint,
//                 hintStyle: GoogleFonts.inter(
//                   fontSize: 13,
//                   color: C.muted.withOpacity(0.7),
//                 ),
//                 prefixIcon: Icon(
//                   widget.icon,
//                   size: 18,
//                   color: _focused ? C.green : C.muted,
//                 ),
//                 suffixIcon: widget.suffix != null
//                     ? Padding(
//                         padding: const EdgeInsets.only(right: 14),
//                         child: widget.suffix,
//                       )
//                     : null,
//                 border:         InputBorder.none,
//                 contentPadding: const EdgeInsets.symmetric(
//                     horizontal: 16, vertical: 14),
//                 errorStyle: GoogleFonts.inter(
//                   fontSize: 11,
//                   color: C.error,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Bouton Se connecter
// // ─────────────────────────────────────────────────────────

// class _SubmitButton extends StatefulWidget {
//   final bool loading;
//   final VoidCallback onPressed;

//   const _SubmitButton({required this.loading, required this.onPressed});

//   @override
//   State<_SubmitButton> createState() => _SubmitButtonState();
// }

// class _SubmitButtonState extends State<_SubmitButton> {
//   bool _hovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _hovered = true),
//       onExit:  (_) => setState(() => _hovered = false),
//       child: GestureDetector(
//         onTap: widget.loading ? null : widget.onPressed,
//         child: AnimatedContainer(
//           duration: const Duration(milliseconds: 200),
//           width: double.infinity,
//           height: 52,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: widget.loading
//                   ? [C.greenLight.withOpacity(0.7), C.green.withOpacity(0.7)]
//                   : [C.green, const Color(0xFF3a5c44), C.greenLight],
//             ),
//             borderRadius: BorderRadius.circular(14),
//             boxShadow: !widget.loading
//                 ? [
//                     BoxShadow(
//                       color: C.green.withOpacity(_hovered ? 0.45 : 0.3),
//                       blurRadius: _hovered ? 28 : 16,
//                       offset: const Offset(0, 8),
//                     ),
//                   ]
//                 : [],
//           ),
//           transform: _hovered && !widget.loading
//               ? (Matrix4.identity()..scale(1.015))
//               : Matrix4.identity(),
//           child: Center(
//             child: widget.loading
//                 ? Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       const SizedBox(
//                         width: 18,
//                         height: 18,
//                         child: CircularProgressIndicator(
//                           strokeWidth: 2,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       Text(
//                         'Connexion en cours…',
//                         style: GoogleFonts.inter(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   )
//                 : Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         'Se connecter',
//                         style: GoogleFonts.inter(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(width: 8),
//                       const Icon(
//                         Icons.arrow_forward_rounded,
//                         color: Colors.white,
//                         size: 18,
//                       ),
//                     ],
//                   ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Vue Succès
// // ─────────────────────────────────────────────────────────

// class _SuccessView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(44),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const SizedBox(height: 60),
//           Container(
//             width: 80,
//             height: 80,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: C.green.withOpacity(0.1),
//               border: Border.all(color: C.green.withOpacity(0.3), width: 2),
//             ),
//             child: const Icon(
//               Icons.check_rounded,
//               color: C.green,
//               size: 40,
//             ),
//           )
//               .animate()
//               .scale(
//                 begin: const Offset(0.5, 0.5),
//                 end: const Offset(1.0, 1.0),
//                 duration: 500.ms,
//                 curve: Curves.elasticOut,
//               ),
//           const SizedBox(height: 24),
//           Text(
//             'Connexion réussie !',
//             style: GoogleFonts.poppins(
//               fontSize: 24,
//               fontWeight: FontWeight.w700,
//               color: C.dark,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             'Redirection vers le tableau de bord…',
//             style: GoogleFonts.inter(fontSize: 14, color: C.muted),
//           ),
//           const SizedBox(height: 32),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [0, 1, 2].map((i) => Container(
//               margin: const EdgeInsets.symmetric(horizontal: 4),
//               width: 8,
//               height: 8,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: i == 0 ? C.green : C.greenLight,
//                 boxShadow: [
//                   BoxShadow(
//                     color: C.green.withOpacity(0.3),
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
//             )).toList(),
//           ),
//           const SizedBox(height: 60),
//         ],
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Badge sécurité
// // ─────────────────────────────────────────────────────────

// class _SecurityBadge extends StatelessWidget {
//   final String icon;
//   final String label;

//   const _SecurityBadge({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(icon, style: const TextStyle(fontSize: 13)),
//         const SizedBox(width: 5),
//         Text(
//           label,
//           style: GoogleFonts.inter(fontSize: 11, color: C.muted),
//         ),
//       ],
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Pulse dot
// // ─────────────────────────────────────────────────────────

// class _PulseDot extends StatefulWidget {
//   @override
//   State<_PulseDot> createState() => _PulseDotState();
// }

// class _PulseDotState extends State<_PulseDot>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _c;
//   late final Animation<double>   _a;

//   @override
//   void initState() {
//     super.initState();
//     _c = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 900))
//       ..repeat(reverse: true);
//     _a = CurvedAnimation(parent: _c, curve: Curves.easeInOut);
//   }

//   @override
//   void dispose() { _c.dispose(); super.dispose(); }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _a,
//       builder: (_, __) => Container(
//         width: 7,
//         height: 7,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: C.green.withOpacity(0.5 + _a.value * 0.5),
//         ),
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────────────────────
// // Dot grid painter
// // ─────────────────────────────────────────────────────────

// class _DotGridPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.white.withOpacity(0.06)
//       ..style = PaintingStyle.fill;
//     const spacing = 28.0;
//     for (double x = 0; x < size.width; x += spacing) {
//       for (double y = 0; y < size.height; y += spacing) {
//         canvas.drawCircle(Offset(x, y), 1.5, paint);
//       }
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter _) => false;
// }
