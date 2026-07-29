import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [C.greenLight, C.sidebarMuted],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.admin_panel_settings,
            color: Colors.white,
            size: 40,
          ),
          const Spacer(),
          Text(
            'Bienvenue !',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Connectez-vous à votre espace afin d'accéder "
            'à toutes les fonctionnalités.',
            style: GoogleFonts.inter(
              color: Colors.white70,
              fontSize: 18,
              height: 1.6,
            ),
          ),
          const Spacer(),
          Center(
            child: Icon(
              Icons.lock_outline,
              size: 170,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          const Spacer(),
        ],
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