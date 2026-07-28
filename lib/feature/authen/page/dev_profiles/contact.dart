import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/header.dart';
import 'package:grace_church/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _subjectCtrl = TextEditingController();
  final _msgCtrl = TextEditingController();
  bool _sending = false;
  bool _sent = false;

  void _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _sending = true);
    await Future.delayed(const Duration(milliseconds: 1600));
    setState(() {
      _sending = false;
      _sent = true;
    });
  }

  void _launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) launchUrl(uri);
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _subjectCtrl.dispose();
    _msgCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 900;

    return Container(
      color: AppColorsProfile.light,
      padding: EdgeInsets.symmetric(vertical: 96, horizontal: 0.16.sw),
      child: Column(
        children: [
          // ── En-tête ──────────────────────────────────────────
          Column(
            children: [
              const SectionTag(label: 'CONTACT'),
              const SizedBox(height: 12),
              Text(
                'Travaillons ensemble',
                style: GoogleFonts.poppins(
                  fontSize: isWide ? 44 : 30,
                  fontWeight: FontWeight.w700,
                  color: AppColorsProfile.dark,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Vous avez un projet en tête ? Je suis disponible '
                'pour de nouvelles collaborations.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 15,
                  color: AppColorsProfile.muted,
                  height: 1.6,
                ),
              ),
            ],
          ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.2, end: 0),

          const SizedBox(height: 56),
 
          // ── Corps : carte + formulaire ────────────────────────
          if (isWide)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 280, child: _ContactCard(onLaunch: _launch)),
                const SizedBox(width: 32),
                Expanded(
                  child: _sent
                      ? _SuccessCard(
                          onReset: () => setState(() => _sent = false),
                        )
                      : _FormCard(
                          formKey: _formKey,
                          nameCtrl: _nameCtrl,
                          emailCtrl: _emailCtrl,
                          subjectCtrl: _subjectCtrl,
                          msgCtrl: _msgCtrl,
                          sending: _sending,
                          onSubmit: _submit,
                        ),
                ),
              ],
            )
          else
            Column(
              children: [
                _ContactCard(onLaunch: _launch),
                const SizedBox(height: 24),
                _sent
                    ? _SuccessCard(onReset: () => setState(() => _sent = false))
                    : _FormCard(
                        formKey: _formKey,
                        nameCtrl: _nameCtrl,
                        emailCtrl: _emailCtrl,
                        subjectCtrl: _subjectCtrl,
                        msgCtrl: _msgCtrl,
                        sending: _sending,
                        onSubmit: _submit,
                      ),
              ],
            ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Carte d'informations de contact
// ─────────────────────────────────────────────────────────

class _ContactCard extends StatelessWidget {
  final void Function(String) onLaunch;

  const _ContactCard({required this.onLaunch});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 0.420.sh,
          padding: const EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: AppColorsProfile.dark,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nom + titre
              Text(
                'Votre Nom',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Flutter Developer · Senior',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: AppColorsProfile.primary,
                ),
              ),
              const SizedBox(height: 24),

              // Infos
              ...[
                (
                  Icons.email_rounded,
                  'emmanuelpet@gmail.com',
                  'mailto:emmanuelpeters@gmail.com',
                ),
                (Icons.phone_rounded, '+225 07 88 88 41 18', 'tel:+2250788884118'),
                (Icons.location_on_rounded, 'Abidjan, Côte d\'Ivoire', '#'),
              ].map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _ContactRow(
                    icon: e.$1,
                    label: e.$2,
                    url: e.$3,
                    onLaunch: onLaunch,
                  ),
                ),
              ),

              Divider(color: Colors.white.withOpacity(0.08)),
              const SizedBox(height: 16),

              Text(
                'Me retrouver sur',
                style: GoogleFonts.inter(fontSize: 11, color: Colors.white30),
              ),
              const SizedBox(height: 12),

              // Réseaux sociaux
              Row(
                children: [
                  _SocialBtn(
                    icon: Icons.code_rounded,
                    url: 'https://github.com',
                    onLaunch: onLaunch,
                    isSvpIcon: true,
                    svpIcon: Assets.auth.github,
                  ),
                  const SizedBox(width: 10),
                  _SocialBtn(
                    icon: Icons.work_rounded,
                    url: 'https://linkedin.com',
                    onLaunch: onLaunch,
                    isSvpIcon: true,
                    svpIcon: Assets.auth.linkedin01
                  ),
                  const SizedBox(width: 10),
                  _SocialBtn(
                    icon: Icons.chat_rounded,
                    url: 'https://wa.me',
                    onLaunch: onLaunch,
                    isSvpIcon: true,
                    svpIcon: Assets.auth.whatsapp,
                  ),
                ],
              ),
            ],
          ),
        )
        .animate(delay: 100.ms)
        .fadeIn(duration: 500.ms)
        .slideX(begin: -0.05, end: 0);
  }
}

// ─────────────────────────────────────────────────────────
// Ligne d'info (email / téléphone / localisation)
// ─────────────────────────────────────────────────────────

class _ContactRow extends StatefulWidget {
  final IconData icon;
  final String label;
  final String url;
  final void Function(String) onLaunch;

  const _ContactRow({
    required this.icon,
    required this.label,
    required this.url,
    required this.onLaunch,
  });

  @override
  State<_ContactRow> createState() => _ContactRowState();
}

class _ContactRowState extends State<_ContactRow> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () => widget.onLaunch(widget.url),
        child: Row(
          children: [
            // Icône
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: _hovered
                    ? AppColorsProfile.primary
                    : AppColorsProfile.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                widget.icon,
                size: 16,
                color: _hovered ? Colors.white : AppColorsProfile.primary,
              ),
            ),
            const SizedBox(width: 12),

            // Texte
            Text(
              widget.label,
              style: GoogleFonts.inter(
                fontSize: 13,
                color: _hovered ? Colors.white : Colors.white.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Bouton réseau social
// ─────────────────────────────────────────────────────────

class _SocialBtn extends StatefulWidget {
  final IconData icon;
  final String url;
  final void Function(String) onLaunch;
  final bool isSvpIcon;
  final String svpIcon;

  const _SocialBtn({
    required this.icon,
    required this.url,
    required this.onLaunch,
    required this.isSvpIcon,
    required this.svpIcon,
  });

  @override
  State<_SocialBtn> createState() => _SocialBtnState();
}

class _SocialBtnState extends State<_SocialBtn> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () => widget.onLaunch(widget.url),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(_hovered ? 0.12 : 0.07),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
          ),
          transform: _hovered
              ? (Matrix4.identity()..translate(0.0, -3.0))
              : Matrix4.identity(),
          child: widget.isSvpIcon
              ? SvgPicture.asset(
                  widget.svpIcon,
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                    _hovered ? Colors.white : Colors.white54,
                    BlendMode.srcIn,
                  ),
                )
              : Icon(
                  widget.icon,
                  size: 16,
                  color: _hovered ? Colors.white : Colors.white54,
                ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Formulaire de contact
// ─────────────────────────────────────────────────────────

class _FormCard extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameCtrl;
  final TextEditingController emailCtrl;
  final TextEditingController subjectCtrl;
  final TextEditingController msgCtrl;
  final bool sending;
  final VoidCallback onSubmit;

  const _FormCard({
    required this.formKey,
    required this.nameCtrl,
    required this.emailCtrl,
    required this.subjectCtrl,
    required this.msgCtrl,
    required this.sending,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColorsProfile.border),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 32,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nom + Email côte à côte si assez large
                LayoutBuilder(
                  builder: (_, c) => c.maxWidth > 480
                      ? Row(
                          children: [
                            Expanded(
                              child: _Field(
                                ctrl: nameCtrl,
                                label: 'Nom complet',
                                hint: 'Jean Dupont',
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _Field(
                                ctrl: emailCtrl,
                                label: 'Email',
                                hint: 'jean@email.com',
                                isEmail: true,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            _Field(
                              ctrl: nameCtrl,
                              label: 'Nom complet',
                              hint: 'Jean Dupont',
                            ),
                            const SizedBox(height: 16),
                            _Field(
                              ctrl: emailCtrl,
                              label: 'Email',
                              hint: 'jean@email.com',
                              isEmail: true,
                            ),
                          ],
                        ),
                ),
                const SizedBox(height: 16),

                _Field(
                  ctrl: subjectCtrl,
                  label: 'Sujet',
                  hint: 'Votre projet Flutter...',
                ),
                const SizedBox(height: 16),

                _Field(
                  ctrl: msgCtrl,
                  label: 'Message',
                  hint: 'Décrivez votre projet, vos besoins et votre budget...',
                  maxLines: 5,
                  required: true,
                ),
                const SizedBox(height: 24),

                _SubmitButton(sending: sending, onTap: onSubmit),
              ],
            ),
          ),
        )
        .animate(delay: 200.ms)
        .fadeIn(duration: 500.ms)
        .slideX(begin: 0.05, end: 0);
  }
}

// ─────────────────────────────────────────────────────────
// Champ de texte stylisé
// ─────────────────────────────────────────────────────────

class _Field extends StatefulWidget {
  final TextEditingController ctrl;
  final String label;
  final String hint;
  final int maxLines;
  final bool required;
  final bool isEmail;

  const _Field({
    required this.ctrl,
    required this.label,
    required this.hint,
    this.maxLines = 1,
    this.required = false,
    this.isEmail = false,
  });

  @override
  State<_Field> createState() => _FieldState();
}

class _FieldState extends State<_Field> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text(
          widget.label,
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: AppColorsProfile.dark.withOpacity(0.6),
          ),
        ),
        const SizedBox(height: 6),

        // Input
        Focus(
          onFocusChange: (v) => setState(() => _focused = v),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F7F9),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: _focused
                    ? AppColorsProfile.primary
                    : Colors.black.withOpacity(0.08),
                width: _focused ? 1.5 : 1,
              ),
            ),
            child: TextFormField(
              controller: widget.ctrl,
              maxLines: widget.maxLines,
              keyboardType: widget.isEmail
                  ? TextInputType.emailAddress
                  : TextInputType.text,
              validator: (v) {
                if (widget.required && (v == null || v.trim().isEmpty)) {
                  return 'Ce champ est requis';
                }
                if (widget.isEmail &&
                    v != null &&
                    v.isNotEmpty &&
                    !v.contains('@')) {
                  return 'Email invalide';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: GoogleFonts.inter(
                  fontSize: 13,
                  color: AppColorsProfile.muted.withOpacity(0.6),
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
              ),
              style: GoogleFonts.inter(
                fontSize: 13,
                color: AppColorsProfile.dark,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────
// Bouton Envoyer
// ─────────────────────────────────────────────────────────

class _SubmitButton extends StatefulWidget {
  final bool sending;
  final VoidCallback onTap;

  const _SubmitButton({required this.sending, required this.onTap});

  @override
  State<_SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<_SubmitButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.sending ? null : widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: AppColorsProfile.primary,
            borderRadius: BorderRadius.circular(99),
            boxShadow: _hovered && !widget.sending
                ? [
                    BoxShadow(
                      color: AppColorsProfile.primary.withOpacity(0.35),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ]
                : [],
          ),
          transform: _hovered && !widget.sending
              ? (Matrix4.identity()..scale(1.02))
              : Matrix4.identity(),
          child: Center(
            child: widget.sending
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Envoi en cours...',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.send_rounded,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Envoyer le message',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Carte de confirmation après envoi
// ─────────────────────────────────────────────────────────

class _SuccessCard extends StatelessWidget {
  final VoidCallback onReset;

  const _SuccessCard({required this.onReset});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColorsProfile.border),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icône checkmark
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: AppColorsProfile.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check_rounded,
              color: AppColorsProfile.primary,
              size: 32,
            ),
          ).animate().scale(
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.0, 1.0),
            duration: 400.ms,
            curve: Curves.elasticOut,
          ),

          const SizedBox(height: 20),

          Text(
            'Message envoyé !',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColorsProfile.dark,
            ),
          ),
          const SizedBox(height: 8),

          Text(
            'Je vous répondrai dans les plus brefs délais.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: AppColorsProfile.muted,
            ),
          ),
          const SizedBox(height: 24),

          GestureDetector(
            onTap: onReset,
            child: Text(
              'Envoyer un autre message',
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColorsProfile.primary,
              ),
            ),
          ),
        ],
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
