import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

// ─────────────────────────────────────────────
//  COULEURS
// ─────────────────────────────────────────────
class AppColors {
  static const Color primary = Color(0xFF1DB954);
  static const Color dark = Color(0xFF1E1E1E);
  static const Color light = Color(0xFFF8F7F9);
  static const Color muted = Color(0xFF7A7887);
  static const Color border = Color(0x14000000);
}

// ─────────────────────────────────────────────
//  SECTION ABOUT — widget racine
// ─────────────────────────────────────────────
class AbouteSections extends StatelessWidget {
  const AbouteSections({super.key});

  static const List<(IconData, String, String)> _skills = [
    (Icons.phone_iphone_rounded, 'Flutter', 'UI/UX cross-platform'),
    (
      Icons.local_fire_department_rounded,
      'Firebase',
      'Auth, Firestore, Storage',
    ),
    (Icons.api_rounded, 'REST API', 'Dio, http, GraphQL'),
    (Icons.layers_rounded, 'Clean Arch', 'Domain, Data, Presentation'),
    (Icons.bolt_rounded, 'BLoC / Cubit', 'State management'),
    (Icons.storage_rounded, 'Supabase', 'Open-source Firebase'),
    (Icons.merge_type_rounded, 'Git', 'GitHub, GitLab, CI/CD'),
    (Icons.loop_rounded, 'CI/CD', 'Actions, Fastlane'),
    (Icons.animation_rounded, 'Animations', 'Rive, Lottie, custom'),
    (Icons.devices_rounded, 'Responsive', 'Mobile, tablet, desktop'),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final isMobile = width < 600;
        final isTablet = width >= 600 && width < 1024;
        final isDesktop = width >= 1024;

        final padding = isMobile ? 20.0 : (isTablet ? 40.0 : 64.0);
        final skillColumns = isMobile ? 2 : (isTablet ? 3 : 5);

        return Container(
          width: double.infinity,

          padding: EdgeInsets.symmetric(vertical: 40, horizontal: padding),
          decoration: BoxDecoration(
            color: AppColors.light,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SectionHeader(
                isMobile: isMobile,
                isWide: isDesktop,
              ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.15, end: 0),

              const SizedBox(height: 24),

              if (isDesktop)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _TerminalCard()),
                    const SizedBox(width: 48),
                    Expanded(child: _BioCard(isMobile: isMobile)),
                  ],
                )
              else
                Column(
                  children: [
                    _TerminalCard(),
                    const SizedBox(height: 32),
                    _BioCard(isMobile: isMobile),
                  ],
                ),

              const SizedBox(height: 34),

              Text(
                    'Compétences & Technologies',
                    style: GoogleFonts.poppins(
                      fontSize: isMobile ? 19 : 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.dark,
                    ),
                  )
                  .animate(delay: 100.ms)
                  .fadeIn(duration: 500.ms)
                  .slideY(begin: 0.15, end: 0),

              const SizedBox(height: 18),

              _SkillsGrid(
                skills: _skills,
                columns: skillColumns,
                aspectRatio: isMobile ? 1.05 : (isTablet ? 1.05 : 1.1),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final bool isWide;
  final bool isMobile;
  const _SectionHeader({required this.isWide, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '— À PROPOS',
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF1DB954),
            letterSpacing: 1.8,
          ),
        ),
        const SizedBox(height: 14),

        RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              fontSize: isWide ? 44 : (isMobile ? 26 : 34),
              fontWeight: FontWeight.w700,
              color: const Color(0xFF1E1E1E),
              height: 1.15,
            ),
            children: const [
              TextSpan(text: 'Passionné par le code\n'),
              TextSpan(
                text: "et l'excellence",
                style: TextStyle(color: Color(0xFF1DB954)),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Text(
            'Développeur Flutter senior avec une expertise approfondie en '
            'architecture logicielle, performance mobile et expérience '
            'utilisateur soignée.',
            style: GoogleFonts.inter(
              fontSize: isMobile ? 14 : 15,
              color: const Color(0xFF7A7887),
              height: 1.7,
            ),
          ),
        ),
      ],
    );
  }
}

class _TerminalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _WindowDot(color: Colors.red.shade400),
                  const SizedBox(width: 6),
                  _WindowDot(color: Colors.yellow.shade400),
                  const SizedBox(width: 6),
                  const _WindowDot(color: Color(0xFF1DB954)),
                  const SizedBox(width: 12),
                  Text(
                    'about.dart',
                    style: GoogleFonts.sourceCodePro(
                      fontSize: 12,
                      color: Colors.white30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              _codeLine('// Mon parcours', const Color(0xFF1DB954)),
              _codeRich([
                ('void ', Colors.white38),
                ('main', const Color(0xFF79C0FF)),
                ('() {', Colors.white38),
              ]),
              _codePadded('print(', '"5 ans de Flutter"', ');'),
              _codePadded('print(', '"30+ apps publiées"', ');'),
              _codePadded('print(', '"Clean Code first"', ');'),
              _codePadded('runApp(', 'MyPortfolio()', ');'),
              _codeLine('}', Colors.white38),

              const SizedBox(height: 24),
              Divider(color: Colors.white.withValues(alpha: 0.08)),
              const SizedBox(height: 16),

              Text(
                'Stack principal',
                style: GoogleFonts.inter(fontSize: 11, color: Colors.white30),
              ),
              const SizedBox(height: 10),

              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  'Flutter',
                  'Dart',
                  'Firebase',
                  'BLoC',
                  'Clean Arch',
                ].map((t) => _StackBadge(label: t)).toList(),
              ),
            ],
          ),
        )
        .animate(delay: 200.ms)
        .fadeIn(duration: 600.ms)
        .slideX(begin: -0.05, end: 0);
  }
}

// ── Helpers internes ──────────────────────────

class _WindowDot extends StatelessWidget {
  final Color color;
  const _WindowDot({required this.color});

  @override
  Widget build(BuildContext context) => Container(
    width: 11,
    height: 11,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}

class _StackBadge extends StatelessWidget {
  final String label;
  const _StackBadge({required this.label});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
    decoration: BoxDecoration(
      color: const Color(0xFF1DB954).withValues(alpha: 0.15),
      borderRadius: BorderRadius.circular(99),
    ),
    child: Text(
      label,
      style: GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF1DB954),
      ),
    ),
  );
}

Widget _codeLine(String text, Color color) => Text(
  text,
  style: GoogleFonts.sourceCodePro(fontSize: 13, color: color, height: 1.7),
);

Widget _codeRich(List<(String, Color)> parts) => RichText(
  text: TextSpan(
    children: parts
        .map(
          (p) => TextSpan(
            text: p.$1,
            style: GoogleFonts.sourceCodePro(
              fontSize: 13,
              color: p.$2,
              height: 1.7,
            ),
          ),
        )
        .toList(),
  ),
);

Widget _codePadded(String pre, String value, String post) => Padding(
  padding: const EdgeInsets.only(left: 20),
  child: RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: pre,
          style: GoogleFonts.sourceCodePro(
            fontSize: 13,
            color: Colors.white54,
            height: 1.7,
          ),
        ),
        TextSpan(
          text: value,
          style: GoogleFonts.sourceCodePro(
            fontSize: 13,
            color: const Color(0xFFF9C74F),
            height: 1.7,
          ),
        ),
        TextSpan(
          text: post,
          style: GoogleFonts.sourceCodePro(
            fontSize: 13,
            color: Colors.white54,
            height: 1.7,
          ),
        ),
      ],
    ),
  ),
);

class _BioCard extends StatelessWidget {
  final bool isMobile;
  const _BioCard({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Développeur Flutter passionné, je conçois des applications mobiles '
          'haut de gamme en suivant les meilleures pratiques de développement. '
          'Mon approche repose sur la Clean Architecture, le pattern BLoC, '
          'et une obsession pour la qualité du code.',
          style: GoogleFonts.inter(
            fontSize: isMobile ? 14 : 15,
            color: const Color(0xFF1E1E1E).withValues(alpha: 0.75),
            height: 1.75,
          ),
        ),
        const SizedBox(height: 18),

        Text(
          "J'ai livré des applications dans les domaines de l'e-commerce, "
          "la fintech, la santé et les réseaux sociaux — toujours avec un "
          "souci de performance, de maintenabilité et d'expérience utilisateur "
          "irréprochable.",
          style: GoogleFonts.inter(
            fontSize: isMobile ? 14 : 15,
            color: const Color(0xFF1E1E1E).withValues(alpha: 0.75),
            height: 1.75,
          ),
        ),
        const SizedBox(height: 18),

        GridView.count(
          crossAxisCount: isMobile ? 1 : (isMobile ? 2 : 2),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: isMobile ? 5 : 3.5,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: const [
            _InfoItem(label: 'Langages', value: 'Dart, Python'),
            _InfoItem(label: 'Frameworks', value: 'Flutter, Node.js'),
            _InfoItem(label: 'Databases', value: 'Firestore, Supabase'),
            _InfoItem(label: 'Outils', value: 'VS Code, Android Studio'),
          ],
        ),
      ],
    ).animate(delay: 300.ms).fadeIn(duration: 600.ms).slideX(begin: 0.05, end: 0);
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String value;
  const _InfoItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF1DB954),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: GoogleFonts.inter(
            fontSize: 13,
            color: const Color(0xFF1E1E1E).withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }
}

class _SkillsGrid extends StatelessWidget {
  final List<(IconData, String, String)> skills;
  final int columns;
  final double aspectRatio;
  const _SkillsGrid({
    required this.skills,
    required this.columns,
    required this.aspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: aspectRatio,
      ),
      itemCount: skills.length,
      itemBuilder: (_, i) {
        final (icon, label, desc) = skills[i];
        return _SkillCard(icon: icon, label: label, description: desc)
            .animate(delay: Duration(milliseconds: i * 55))
            .fadeIn(duration: 400.ms)
            .slideY(begin: 0.2, end: 0);
      },
    );
  }
}

class _SkillCard extends StatefulWidget {
  final IconData icon;
  final String label;
  final String description;

  const _SkillCard({
    required this.icon,
    required this.label,
    required this.description,
  });

  @override
  State<_SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<_SkillCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        padding: const EdgeInsets.all(1),
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: _hovered
                ? const Color(0xFF1DB954).withValues(alpha: 0.35)
                : const Color(0x14000000),
          ),
          boxShadow: _hovered
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.07),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ]
              : [],
        ),
        transform: _hovered
            ? (Matrix4.identity()..translate(0.0, -5.0))
            : Matrix4.identity(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: _hovered
                    ? const Color(0xFF1DB954).withValues(alpha: 0.15)
                    : const Color(0xFF1DB954).withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                widget.icon,
                color: const Color(0xFF1DB954),
                size: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.label,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1E1E1E),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              widget.description,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 10,
                color: const Color(0xFF7A7887),
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
