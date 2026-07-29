import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/header.dart';


class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  String _activeFilter = 'Tous';
  int _featuredIndex = 0;

  List<ProjectModel> get _filtered => _activeFilter == 'Tous'
      ? kProjects
      : kProjects.where((p) => p.categories.contains(_activeFilter)).toList();

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 900;
    final filtered = _filtered;
    final featured = filtered.isNotEmpty ? filtered[_featuredIndex % filtered.length] : null;
    final rest = filtered.length > 1 ? filtered.sublist(1) : <ProjectModel>[];

    return Container(
      decoration: BoxDecoration(
        color: AppColorsProfile.dark,
        borderRadius: BorderRadius.circular(8.r)      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── En-tête ──────────────────────────────────────────
            _Header(
              activeFilter: _activeFilter,
              onFilterChanged: (f) => setState(() {
                _activeFilter = f;
                _featuredIndex = 0;
              }),
            ),
            const SizedBox(height: 48),

            // ── Projet featured ───────────────────────────────────
            if (featured != null)
              _FeaturedCard(
                project: featured,
                isWide: isWide,
                onTap: () {},
              ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.1, end: 0),

            const SizedBox(height: 32),

            // ── Grille secondaire ─────────────────────────────────
            if (rest.isNotEmpty)
              LayoutBuilder(builder: (_, constraints) {
                int columns = 1;
                if (constraints.maxWidth > 800) columns = 3;
                else if (constraints.maxWidth > 500) columns = 2;

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columns,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.85,
                  ),
                  itemCount: rest.length,
                  itemBuilder: (_, i) => _SmallCard(
                    project: rest[i],
                    onTap: () => setState(() => _featuredIndex = i + 1),
                  )
                      .animate(delay: Duration(milliseconds: i * 80))
                      .fadeIn(duration: 400.ms)
                      .slideY(begin: 0.1, end: 0),
                );
              }),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// En-tête + filtres
// ─────────────────────────────────────────────────────────

class _Header extends StatelessWidget {
  final String activeFilter;
  final void Function(String) onFilterChanged;

  const _Header({
    required this.activeFilter,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTag(label: 'PROJETS'),
                const SizedBox(height: 12),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 1.1,
                    ),
                    children: const [
                      TextSpan(text: 'Mes réalisations\n'),
                      TextSpan(
                        text: '& case studies',
                        style: TextStyle(color: AppColorsProfile.primary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Compteur de projets
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${kProjects.length}',
                  style: GoogleFonts.poppins(
                    fontSize: 48,
                    fontWeight: FontWeight.w800,
                    color: AppColorsProfile.primary,
                  ),
                ),
                Text(
                  'projets',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.white38,
                  ),
                ),
              ],
            ),
          ],
        ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.2, end: 0),

        const SizedBox(height: 32),

        // Filtres
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: kFilters.map((f) {
              final active = activeFilter == f;
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: _FilterChip(
                  label: f,
                  active: active,
                  onTap: () => onFilterChanged(f),
                ),
              );
            }).toList(),
          ),
        ).animate(delay: 100.ms).fadeIn(duration: 400.ms),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────
// Carte featured (grande)
// ─────────────────────────────────────────────────────────

class _FeaturedCard extends StatefulWidget {
  final ProjectModel project;
  final bool isWide;
  final VoidCallback onTap;

  const _FeaturedCard({
    required this.project,
    required this.isWide,
    required this.onTap,
  });

  @override
  State<_FeaturedCard> createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<_FeaturedCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final p = widget.project;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: widget.isWide ? 420 : 520,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: _hovered
                  ? AppColorsProfile.primary.withOpacity(0.5)
                  : Colors.white.withOpacity(0.07),
              width: 1.5,
            ),
            boxShadow: _hovered
                ? [
                    BoxShadow(
                      color: p.color.withOpacity(0.2),
                      blurRadius: 48,
                      offset: const Offset(0, 16),
                    ),
                  ]
                : [],
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Fond dégradé
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      p.color.withOpacity(_hovered ? 0.22 : 0.14),
                      Colors.white.withOpacity(0.03),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),

              // Emoji géant en arrière-plan
              Positioned(
                right: -20,
                top: -20,
                child: AnimatedScale(
                  scale: _hovered ? 1.1 : 1.0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutBack,
                  child: Text(
                    p.emoji,
                    style: const TextStyle(fontSize: 200),
                  ),
                ),
              ),

              // Contenu
              if (widget.isWide)
                Padding(
                  padding: const EdgeInsets.all(44),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(child: _FeaturedContent(project: p, hovered: _hovered)),
                      _FeaturedActions(project: p),
                    ],
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _FeaturedContent(project: p, hovered: _hovered),
                      const SizedBox(height: 20),
                      _FeaturedActions(project: p),
                    ],
                  ),
                ),

              // Badge "Featured"
              Positioned(
                top: 24,
                left: 24,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppColorsProfile.primary,
                    borderRadius: BorderRadius.circular(99),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Featured',
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
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

class _FeaturedContent extends StatelessWidget {
  final ProjectModel project;
  final bool hovered;

  const _FeaturedContent({required this.project, required this.hovered});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Catégorie
        Text(
          project.categories.first.toUpperCase(),
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: AppColorsProfile.primary,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 8),

        // Titre
        Text(
          project.title,
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 12),

        // Description
        Text(
          project.description,
          style: GoogleFonts.inter(
            fontSize: 14,
            color: Colors.white.withOpacity(0.6),
            height: 1.6,
          ),
        ),
        const SizedBox(height: 20),

        // Tags
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: project.tags.map((t) => _Tag(label: t)).toList(),
        ),
      ],
    );
  }
}

class _FeaturedActions extends StatelessWidget {
  final ProjectModel project;

  const _FeaturedActions({required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _RoundBtn(
          icon: Icons.code_rounded,
          label: 'GitHub',
          filled: false,
          onTap: () {},
        ),
        const SizedBox(height: 10),
        _RoundBtn(
          icon: Icons.open_in_new_rounded,
          label: 'Démo',
          filled: true,
          onTap: () {},
        ),
        const SizedBox(height: 10),
        _RoundBtn(
          icon: Icons.article_rounded,
          label: 'Case study',
          filled: false,
          onTap: () {},
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────
// Petite carte secondaire
// ─────────────────────────────────────────────────────────

class _SmallCard extends StatefulWidget {
  final ProjectModel project;
  final VoidCallback onTap;

  const _SmallCard({required this.project, required this.onTap});

  @override
  State<_SmallCard> createState() => _SmallCardState();
}

class _SmallCardState extends State<_SmallCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final p = widget.project;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit:  (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(_hovered ? 0.07 : 0.04),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _hovered
                  ? p.color.withOpacity(0.4)
                  : Colors.white.withOpacity(0.07),
            ),
            boxShadow: _hovered
                ? [
                    BoxShadow(
                      color: p.color.withOpacity(0.12),
                      blurRadius: 32,
                      offset: const Offset(0, 12),
                    ),
                  ]
                : [],
          ),
          transform: _hovered
              ? (Matrix4.identity()..translate(0.0, -6.0))
              : Matrix4.identity(),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Zone image
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Fond
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            p.color.withOpacity(0.15),
                            p.color.withOpacity(0.05),
                          ],
                        ),
                      ),
                    ),
                    // Emoji
                    Center(
                      child: AnimatedScale(
                        scale: _hovered ? 1.15 : 1.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOutBack,
                        child: Text(
                          p.emoji,
                          style: const TextStyle(fontSize: 52),
                        ),
                      ),
                    ),
                    // Overlay "Voir en featured"
                    AnimatedOpacity(
                      opacity: _hovered ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        color: p.color.withOpacity(0.85),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.fullscreen_rounded,
                                color: Colors.white,
                                size: 28,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Voir en vedette',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Contenu bas
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      p.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: _hovered ? AppColorsProfile.primary : Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 6,
                      runSpacing: 4,
                      children: p.tags
                          .take(2)
                          .map((t) => _Tag(label: t, small: true))
                          .toList(),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        _IconAction(
                          icon: Icons.code_rounded,
                          onTap: () {},
                        ),
                        const SizedBox(width: 8),
                        _IconAction(
                          icon: Icons.open_in_new_rounded,
                          onTap: () {},
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 14,
                          color: _hovered
                              ? AppColorsProfile.primary
                              : Colors.white24,
                        ),
                      ],
                    ),
                  ],
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
// Widgets utilitaires
// ─────────────────────────────────────────────────────────

class _Tag extends StatelessWidget {
  final String label;
  final bool small;

  const _Tag({required this.label, this.small = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: small ? 8 : 12,
        vertical: small ? 3 : 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withOpacity(0.08)),
      ),
      child: Text(
        label,
        style: GoogleFonts.inter(
          fontSize: small ? 10 : 11,
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}

class _RoundBtn extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool filled;
  final VoidCallback onTap;

  const _RoundBtn({
    required this.icon,
    required this.label,
    required this.filled,
    required this.onTap,
  });

  @override
  State<_RoundBtn> createState() => _RoundBtnState();
}

class _RoundBtnState extends State<_RoundBtn> {
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: widget.filled
                ? AppColorsProfile.primary
                : Colors.white.withOpacity(_hovered ? 0.12 : 0.07),
            borderRadius: BorderRadius.circular(99),
            border: Border.all(
              color: widget.filled
                  ? AppColorsProfile.primary
                  : Colors.white.withOpacity(0.12),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                size: 13,
                color: widget.filled ? Colors.white : Colors.white60,
              ),
              const SizedBox(width: 6),
              Text(
                widget.label,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: widget.filled ? Colors.white : Colors.white60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IconAction extends StatefulWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _IconAction({required this.icon, required this.onTap});

  @override
  State<_IconAction> createState() => _IconActionState();
}

class _IconActionState extends State<_IconAction> {
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
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(_hovered ? 0.12 : 0.06),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            widget.icon,
            size: 14,
            color: _hovered ? AppColorsProfile.primary : Colors.white38,
          ),
        ),
      ),
    );
  }
}

class _FilterChip extends StatefulWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  State<_FilterChip> createState() => _FilterChipState();
}

class _FilterChipState extends State<_FilterChip> {
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
          decoration: BoxDecoration(
            color: widget.active
                ? AppColorsProfile.primary
                : Colors.white.withOpacity(_hovered ? 0.1 : 0.06),
            borderRadius: BorderRadius.circular(99),
            border: Border.all(
              color: widget.active
                  ? AppColorsProfile.primary
                  : Colors.white.withOpacity(0.1),
            ),
          ),
          child: Text(
            widget.label,
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: widget.active
                  ? Colors.white
                  : Colors.white.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}





class SectionTag extends StatelessWidget {
  final String label;

  const SectionTag({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Ligne verte décorative
        Container(
          width: 24,
          height: 2,
          decoration: BoxDecoration(
            color: AppColorsProfile.primary,
            borderRadius: BorderRadius.circular(99),
          ),
        ),
        const SizedBox(width: 10),

        // Texte du tag
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: AppColorsProfile.primary,
            letterSpacing: 1.8,
          ),
        ),
      ],
    );
  }
}




// ─────────────────────────────────────────────────────────
// Modèle de données
// ─────────────────────────────────────────────────────────

class ProjectModel {
  final String title;
  final String description;
  final List<String> tags;
  final List<String> categories;
  final Color color;
  final String emoji;
  final String githubUrl;
  final String demoUrl;
  final String caseStudyUrl;

  const ProjectModel({
    required this.title,
    required this.description,
    required this.tags,
    required this.categories,
    required this.color,
    required this.emoji,
    this.githubUrl    = 'https://github.com',
    this.demoUrl      = '#',
    this.caseStudyUrl = '#',
  });
}

// ─────────────────────────────────────────────────────────
// Liste des projets
// ─────────────────────────────────────────────────────────

const List<ProjectModel> kProjects = [
  ProjectModel(
    title: 'ShopFlow — E-Commerce',
    description:
        'Application e-commerce complète avec panier, paiement Stripe, '
        'suivi commandes en temps réel et notifications push.',
    tags:       ['Flutter', 'Firebase', 'BLoC', 'Mobile'],
    categories: ['Flutter', 'Firebase', 'Mobile'],
    color: Color(0xFF1DB954),
    emoji: '🛒',
    githubUrl:    'https://github.com',
    demoUrl:      'https://shopflow.demo.com',
    caseStudyUrl: '#',
  ),
  ProjectModel(
    title: 'FinTrack — Finance',
    description:
        'Gestionnaire de budget personnel avec graphiques interactifs, '
        'catégorisation automatique et synchronisation cloud.',
    tags:       ['Flutter', 'Supabase', 'Clean Arch', 'Mobile'],
    categories: ['Flutter', 'Mobile'],
    color: Color(0xFF3B82F6),
    emoji: '💳',
    githubUrl:    'https://github.com',
    demoUrl:      'https://fintrack.demo.com',
    caseStudyUrl: '#',
  ),
  ProjectModel(
    title: 'MedConnect — Santé',
    description:
        'Plateforme de téléconsultation médicale avec vidéo, '
        'prescriptions numériques et dossiers patients sécurisés.',
    tags:       ['Flutter', 'Firebase', 'WebRTC', 'Mobile'],
    categories: ['Flutter', 'Firebase', 'Mobile'],
    color: Color(0xFF8B5CF6),
    emoji: '🏥',
    githubUrl:    'https://github.com',
    demoUrl:      'https://medconnect.demo.com',
    caseStudyUrl: '#',
  ),
  ProjectModel(
    title: 'DevBoard — Dashboard',
    description:
        'Tableau de bord analytics responsive pour développeurs avec '
        'métriques temps réel et rapports exportables.',
    tags:       ['Flutter Web', 'Firebase', 'Charts', 'Web'],
    categories: ['Flutter', 'Firebase', 'Web'],
    color: Color(0xFFF59E0B),
    emoji: '📊',
    githubUrl:    'https://github.com',
    demoUrl:      'https://devboard.demo.com',
    caseStudyUrl: '#',
  ),
  ProjectModel(
    title: 'SocialHub — Réseau',
    description:
        'Application de réseau social avec fil d\'actualité, '
        'messagerie temps réel et système de stories.',
    tags:       ['Flutter', 'Firebase', 'BLoC', 'Mobile'],
    categories: ['Flutter', 'Firebase', 'Mobile'],
    color: Color(0xFFEF4444),
    emoji: '💬',
    githubUrl:    'https://github.com',
    demoUrl:      'https://socialhub.demo.com',
    caseStudyUrl: '#',
  ),
  ProjectModel(
    title: 'MapWalker — Travel',
    description:
        'Application de voyage avec cartes interactives hors-ligne, '
        'guides locaux et planificateur d\'itinéraires.',
    tags:       ['Flutter', 'Maps API', 'REST API', 'Mobile'],
    categories: ['Flutter', 'Mobile'],
    color: Color(0xFF10B981),
    emoji: '🗺️',
    githubUrl:    'https://github.com',
    demoUrl:      'https://mapwalker.demo.com',
    caseStudyUrl: '#',
  ),
];

// ─────────────────────────────────────────────────────────
// Filtres disponibles
// ─────────────────────────────────────────────────────────

const List<String> kFilters = [
  'Tous',
  'Flutter',
  'Firebase',
  'Web',
  'Mobile',
];


