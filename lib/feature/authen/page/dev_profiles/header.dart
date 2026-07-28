
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isWide = size.width > 900;

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: size.height),
      decoration:  BoxDecoration(color: AppColorsProfile.light),
      child: Stack(
        children: [
          // ── Cercle dégradé haut-droite
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColorsProfile.primary.withOpacity(0.12),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // ── Cercle dégradé bas-gauche
          Positioned(
            bottom: 100,
            left: -120,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColorsProfile.primary.withOpacity(0.07),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // ── Grille de points
          Positioned.fill(
            child: CustomPaint(painter: _DotGridPainter()),
          ),

          // ── Contenu principal
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(height: 100),
                if (isWide)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: _HeroLeft()),
                      const SizedBox(width: 60),
                      _HeroRight(),
                    ],
                  )
                else
                  Column(
                    children: [
                      _HeroLeft(),
                      const SizedBox(height: 48),
                      _HeroRight(),
                    ],
                  ),
                const SizedBox(height: 64),
                _StatsBar(),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Partie gauche : texte + boutons
// ─────────────────────────────────────────────────────────

class _HeroLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Badge disponibilité
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: AppColorsProfile.primary.withOpacity(0.08),
            borderRadius: BorderRadius.circular(99),
            border: Border.all(color: AppColorsProfile.primary.withOpacity(0.2)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _PulseDot(),
              const SizedBox(width: 8),
              Text(
                'Disponible pour de nouveaux projets',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: AppColorsProfile.primary,
                ),
              ),
            ],
          ),
        )
            .animate()
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.3, end: 0),

        const SizedBox(height: 28),

        // Salutation
        Text(
          'Bonjour 👋',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColorsProfile.muted,
          ),
        )
            .animate(delay: 100.ms)
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.3, end: 0),

        const SizedBox(height: 8),

        // Titre principal
        RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              fontSize: 58,
              fontWeight: FontWeight.w800,
              color: AppColorsProfile.dark,
              height: 1.08,
              letterSpacing: -1.5,
            ),
            children: [
              const TextSpan(text: 'Je suis\n'),
              TextSpan(
                text: 'Votre Nom',
                style: const TextStyle(color: AppColorsProfile.primary),
              ),
            ],
          ),
        )
            .animate(delay: 150.ms)
            .fadeIn(duration: 700.ms)
            .slideY(begin: 0.3, end: 0),

        const SizedBox(height: 16),

        // Sous-titre rôles
        Row(
          children: [
            Text(
              'Flutter Developer',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColorsProfile.dark.withOpacity(0.85),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                color: AppColorsProfile.dark.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
            ),
            Text(
              'Mobile Engineer',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: AppColorsProfile.dark.withOpacity(0.45),
              ),
            ),
          ],
        )
            .animate(delay: 200.ms)
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.2, end: 0),

        const SizedBox(height: 20),

        // Description
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: Text(
            'Je développe des applications mobiles modernes, performantes et évolutives '
            'grâce à Flutter, Clean Architecture, Firebase et une architecture logicielle robuste.',
            style: GoogleFonts.inter(
              fontSize: 16,
              color: AppColorsProfile.muted,
              height: 1.7,
            ),
          ),
        )
            .animate(delay: 250.ms)
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.2, end: 0),

        const SizedBox(height: 36),

        // Boutons CTA
        Wrap(
          spacing: 16,
          runSpacing: 12,
          children: [
            _CTAButton(
              label: 'Voir mes projets',
              icon: Icons.arrow_forward_rounded,
              filled: true,
              onTap: () {},
            ),
            _CTAButton(
              label: 'Me contacter',
              icon: Icons.mail_outline_rounded,
              filled: false,
              onTap: () {},
            ),
          ],
        )
            .animate(delay: 350.ms)
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.2, end: 0),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────
// Partie droite : illustration code + badges flottants
// ─────────────────────────────────────────────────────────

class _HeroRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 360,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Cercle principal sombre
          Container(
            width: 360,
            height: 360,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF1E1E1E), Color(0xFF2D2D2D)],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColorsProfile.primary.withOpacity(0.2),
                  blurRadius: 60,
                  spreadRadius: 10,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 30,
                  offset: const Offset(0, 16),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: _CodeSnippet(),
            ),
          ),

          // Badge haut-gauche
          Positioned(
            top: -16,
            left: -24,
            child: _FloatingBadge(
              icon: Icons.phone_iphone_rounded,
              label: 'Flutter Expert',
              dark: false,
            )
                .animate(onPlay: (c) => c.repeat(reverse: true), delay: 200.ms)
                .moveY(begin: 0, end: -8, duration: 2000.ms, curve: Curves.easeInOut),
          ),

          // Badge bas-droite
          Positioned(
            bottom: -16,
            right: -24,
            child: _FloatingBadge(
              icon: Icons.star_rounded,
              label: 'Senior Developer',
              dark: true,
            )
                .animate(onPlay: (c) => c.repeat(reverse: true), delay: 600.ms)
                .moveY(begin: 0, end: -8, duration: 2400.ms, curve: Curves.easeInOut),
          ),

          // Badge milieu-droite
          Positioned(
            top: 140,
            right: -32,
            child: _FloatingBadge(
              icon: Icons.storage_rounded,
              label: 'Firebase',
              dark: false,
            )
                .animate(onPlay: (c) => c.repeat(reverse: true), delay: 1000.ms)
                .moveY(begin: 0, end: -8, duration: 2800.ms, curve: Curves.easeInOut),
          ),
        ],
      ),
    )
        .animate(delay: 300.ms)
        .fadeIn(duration: 800.ms)
        .scale(begin: const Offset(0.9, 0.9), end: const Offset(1, 1));
  }
}

// ─────────────────────────────────────────────────────────
// Snippet de code affiché dans le cercle
// ─────────────────────────────────────────────────────────

class _CodeSnippet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.04),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.08)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Boutons fenêtre
          Row(
            children: [
              _dot(Colors.red.shade300),
              const SizedBox(width: 6),
              _dot(Colors.yellow.shade300),
              const SizedBox(width: 6),
              _dot(AppColorsProfile.primary),
            ],
          ),
          const SizedBox(height: 14),

          _code('// Flutter Developer', AppColorsProfile.muted),
          const SizedBox(height: 4),
          _codeRich([
            ('class ', AppColorsProfile.primary),
            ('Developer', const Color(0xFF79C0FF)),
            (' {', Colors.white70),
          ]),
          _codePad('final name = ', '"Votre Nom";'),
          _codePad('final skills = [', null),
          _codePad2('"Flutter",',    AppColorsProfile.primary),
          _codePad2('"Firebase",',   Colors.white38),
          _codePad2('"Clean Arch",', Colors.white38),
          _codePad2('"BLoC/Cubit"',  Colors.white38),
          _codePad('];', null),
          _code('}', AppColorsProfile.primary),
        ],
      ),
    );
  }

  Widget _dot(Color c) => Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(color: c, shape: BoxShape.circle),
      );

  Widget _code(String t, Color c) => Text(
        t,
        style: GoogleFonts.sourceCodePro(fontSize: 12, color: c, height: 1.7),
      );

  Widget _codeRich(List<(String, Color)> parts) => RichText(
        text: TextSpan(
          children: parts
              .map((p) => TextSpan(
                    text: p.$1,
                    style: GoogleFonts.sourceCodePro(
                        fontSize: 12, color: p.$2, height: 1.7),
                  ))
              .toList(),
        ),
      );

  Widget _codePad(String label, String? value) => Padding(
        padding: const EdgeInsets.only(left: 16),
        child: value == null
            ? Text(label,
                style: GoogleFonts.sourceCodePro(
                    fontSize: 12, color: Colors.white70, height: 1.7))
            : RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: label,
                      style: GoogleFonts.sourceCodePro(
                          fontSize: 12, color: Colors.white70, height: 1.7)),
                  TextSpan(
                      text: value,
                      style: GoogleFonts.sourceCodePro(
                          fontSize: 12, color: const Color(0xFFF9C74F), height: 1.7)),
                ]),
              ),
      );

  Widget _codePad2(String t, Color c) => Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Text(t,
            style: GoogleFonts.sourceCodePro(
                fontSize: 12, color: c, height: 1.7)),
      );
}

// ─────────────────────────────────────────────────────────
// Badge flottant autour du cercle
// ─────────────────────────────────────────────────────────

class _FloatingBadge extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool dark;

  const _FloatingBadge({
    required this.icon,
    required this.label,
    required this.dark,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: dark ? AppColorsProfile.dark : Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(dark ? 0.2 : 0.1),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColorsProfile.primary),
          const SizedBox(width: 8),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: dark ? Colors.white : AppColorsProfile.dark,
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Barre de statistiques animées
// ─────────────────────────────────────────────────────────

class _StatsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const stats = [
      (Icons.emoji_events_rounded,  5,  '+', "Années d'expérience"),
      (Icons.work_rounded,          30, '+', 'Projets réalisés'),
      (Icons.people_rounded,        20, '+', 'Clients satisfaits'),
      (Icons.code_rounded,          15, '+', 'Technologies'),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColorsProfile.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 32,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (_, constraints) {
          return constraints.maxWidth > 500
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: stats
                      .map((s) => AnimatedCounter(
                            icon: s.$1,
                            target: s.$2,
                            suffix: s.$3,
                            label: s.$4,
                          ))
                      .toList(),
                )
              : GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: stats
                      .map((s) => AnimatedCounter(
                            icon: s.$1,
                            target: s.$2,
                            suffix: s.$3,
                            label: s.$4,
                          ))
                      .toList(),
                );
        },
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Bouton CTA
// ─────────────────────────────────────────────────────────

class _CTAButton extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool filled;
  final VoidCallback onTap;

  const _CTAButton({
    required this.label,
    required this.icon,
    required this.filled,
    required this.onTap,
  });

  @override
  State<_CTAButton> createState() => _CTAButtonState();
}

class _CTAButtonState extends State<_CTAButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          decoration: BoxDecoration(
            color: widget.filled ? AppColorsProfile.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(99),
            border: widget.filled
                ? null
                : Border.all(
                    color: _hovered
                        ? AppColorsProfile.primary
                        : Colors.black.withOpacity(0.15),
                  ),
            boxShadow: widget.filled && _hovered
                ? [
                    BoxShadow(
                      color: AppColorsProfile.primary.withOpacity(0.35),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ]
                : [],
          ),
          transform: _hovered
              ? (Matrix4.identity()..scale(1.04))
              : Matrix4.identity(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.label,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: widget.filled
                      ? Colors.white
                      : (_hovered ? AppColorsProfile.primary : AppColorsProfile.dark),
                ),
              ),
              const SizedBox(width: 8),
              AnimatedSlide(
                offset: _hovered && widget.filled
                    ? const Offset(0.2, 0)
                    : Offset.zero,
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  widget.icon,
                  size: 16,
                  color: widget.filled
                      ? Colors.white
                      : (_hovered ? AppColorsProfile.primary : AppColorsProfile.dark),
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
// Point vert qui pulse dans le badge
// ─────────────────────────────────────────────────────────

class _PulseDot extends StatefulWidget {
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
        vsync: this, duration: const Duration(milliseconds: 1000))
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
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColorsProfile.primary.withOpacity(0.5 + _a.value * 0.5),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Grille de points en arrière-plan
// ─────────────────────────────────────────────────────────

class _DotGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF1E1E1E).withOpacity(0.03)
      ..style = PaintingStyle.fill;
    const spacing = 32.0;
    for (double x = 0; x < size.width; x += spacing) {
      for (double y = 0; y < size.height; y += spacing) {
        canvas.drawCircle(Offset(x, y), 1.5, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter old) => false;
}



















class AppColorsProfile {
  static const Color primary = Color(0xFF1DB954);
  static const Color dark = Color(0xFF1E1E1E);
  static const Color light = Color(0xFFF8F7F9);
  static const Color card = Color(0xFFFFFFFF);
  static const Color muted = Color(0xFF7A7887);
  static const Color border = Color(0x14000000);
  static const Color darkCard = Color(0xFF2A2A2A);
  static const Color darkBorder = Color(0x14FFFFFF);
}

class AppTheme {
  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColorsProfile.primary,
          background: AppColorsProfile.light,
        ),
        scaffoldBackgroundColor: AppColorsProfile.light,
        textTheme: GoogleFonts.interTextTheme().copyWith(
          displayLarge: GoogleFonts.poppins(fontSize: 64, fontWeight: FontWeight.w800, color: AppColorsProfile.dark, height: 1.08, letterSpacing: -1.5),
          displayMedium: GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.w700, color: AppColorsProfile.dark, height: 1.1, letterSpacing: -1),
          displaySmall: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w700, color: AppColorsProfile.dark, height: 1.15),
          headlineMedium: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600, color: AppColorsProfile.dark),
          bodyLarge: GoogleFonts.inter(fontSize: 16, color: AppColorsProfile.muted, height: 1.7),
          bodyMedium: GoogleFonts.inter(fontSize: 14, color: AppColorsProfile.muted, height: 1.6),
          labelSmall: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w600, color: AppColorsProfile.primary, letterSpacing: 1.5),
        ),
        // elevationOverlayColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      );
}





class AnimatedCounter extends StatefulWidget {
  final int target;
  final String suffix;
  final String label;
  final IconData icon;

  const AnimatedCounter({
    super.key,
    required this.target,
    required this.suffix,
    required this.label,
    required this.icon,
  });

  @override
  State<AnimatedCounter> createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<AnimatedCounter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _started = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    );
  }

  /// Démarre l'animation une seule fois quand le widget devient visible
  void _start() {
    if (!_started) {
      _started = true;
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('counter-${widget.label}'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.5) _start();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icône
          Icon(
            widget.icon,
            color: AppColorsProfile.primary,
            size: 20,
          ),
          const SizedBox(height: 8),

          // Nombre animé
          AnimatedBuilder(
            animation: _animation,
            builder: (_, __) {
              final value = (_animation.value * widget.target).round();
              return Text(
                '$value${widget.suffix}',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: AppColorsProfile.dark,
                ),
              );
            },
          ),
          const SizedBox(height: 4),

          // Label
          Text(
            widget.label,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 11,
              color: AppColorsProfile.muted,
            ),
          ),
        ],
      ),
    );
  }
}