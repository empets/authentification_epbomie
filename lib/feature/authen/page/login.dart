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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

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
            return TopToast.showError(
              context,
              message:
                  '${state.errorMessage} Merci de bien vouloir réessayer ou contacter le support le service support.',
            );
          }
        },
        child: Scaffold(
          backgroundColor: C.input,
          body: Center(
            child: Container(
              width: 1000,
              height: 650,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Row(
                children: [
                  /// Partie gauche
                  Expanded(
                    flex: 4,
                    child: Container(
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
                            "Bienvenue !",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 20),

                          const Text(
                            "Connectez-vous à votre espace afin d'accéder à toutes les fonctionnalités.",
                            style: TextStyle(
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
                              color: Colors.white.withOpacity(.8),
                            ),
                          ),

                          const Spacer(),
                        ],
                      ),
                    ),
                  ),

                  /// Partie droite
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 50,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Text(
                              "Connexion",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Center(
                            child: Text(
                              "Entrez vos identifiants dans le cas d'un souci de connexion veuillez contacter l'équipe support.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          const SizedBox(height: 40),

                          const Text(
                            "Email",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),

                          const SizedBox(height: 8),

                          BlocBuilder<SigningBloc, SigninState>(
                            builder: (context, state) {
                              return TextField(
                                readOnly: state.status.isInProgress
                                    ? true
                                    : false,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.grey.shade400,
                                  ),
                                  hintText: "Ex: manu@gmail.com",
                                  errorText:
                                      state.email.isPure || state.email.isValid
                                      ? null
                                      : 'aucun email renseigné',
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                onChanged: (email) {
                                  context.read<SigningBloc>().add(
                                    SigninEvent.changeEmail(email),
                                  );
                                },
                              );
                            },
                          ),

                          const SizedBox(height: 16),

                          Text(
                            "Contact",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          BlocBuilder<SigningBloc, SigninState>(
                            builder: (context, state) {
                              return TextField(
                                readOnly: state.status.isInProgress
                                    ? true
                                    : false,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone_outlined,
                                    color: Colors.grey.shade400,
                                  ),
                                  hintText: "Ex: 0788884119",
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                  errorText:
                                      state.contact.isPure ||
                                          state.contact.isValid
                                      ? null
                                      : 'aucun contact renseigné',
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                onChanged: (contact) {
                                  context.read<SigningBloc>().add(
                                    SigninEvent.changeContact(contact),
                                  );
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 16),

                          Text(
                            "Mot de passe",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(height: 8),

                          BlocBuilder<SigningBloc, SigninState>(
                            builder: (context, state) {
                              return TextField(
                                readOnly: state.status.isInProgress
                                    ? true
                                    : false,
                                obscureText: obscureText,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Colors.grey.shade400,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        obscureText = !obscureText;
                                      });
                                    },
                                    child: Icon(
                                      obscureText
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  hintText: "Ex: youpassword123@#.",
                                  errorText:
                                      state.password.isPure ||
                                          state.password.isValid
                                      ? null
                                      : 'aucun mot de passe renseigné',
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),

                                onChanged: (password) {
                                  context.read<SigningBloc>().add(
                                    SigninEvent.changePassword(password),
                                  );
                                },
                              );
                            },
                          ),

                          const SizedBox(height: 30),

                          BlocBuilder<SigningBloc, SigninState>(
                            builder: (context, state) {
                              return PrimaryButton(
                                label: "Se connecter",
                                fontSize: 12,
                                colorText: context.appColor.primaryWhite,
                                backgroundColor:
                                    state.status.isInProgress || !state.isValid
                                    ? context.appColor.primaryGray500
                                          .withValues(alpha: 0.5)
                                    : C.greenLight,
                                isLoading: state.status.isInProgress,
                                borderRadius: 10.r,
                                onPressed: state.status.isInProgress
                                    ? null
                                    : () {
                                        FocusScope.of(context).unfocus();
                                        context.read<SigningBloc>().add(
                                          SigninEvent.submit(),
                                        );
                                      },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
