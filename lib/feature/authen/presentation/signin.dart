import 'package:flutter/material.dart';
import 'package:gracechurchadmine/core/custome_widget/button.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: C.input,
      body: Center(
        child: Container(
          width: 1000,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.08),
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
                      colors: [Color(0xff0066FF), Color(0xff4A90FF)],
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

                      const Text(
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
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      const SizedBox(height: 50),

                      const Text(
                        "Email",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),

                      const SizedBox(height: 8),

                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: "Votre email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      const Text(
                        "Mot de passe",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),

                      const SizedBox(height: 8),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: const Icon(Icons.visibility_off_outlined),
                          hintText: "Votre mot de passe",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),

                      PrimaryButton(
                        label: "Se connecter",
                        fontSize: 12,
                        colorText: Colors.white,
                        onPressed: () {},
                      ),
                    ],
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
