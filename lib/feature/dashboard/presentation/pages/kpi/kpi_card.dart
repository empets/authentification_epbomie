import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grace_church/core/moke/moke_data.dart';

class KpiCard extends StatefulWidget {
  final String label, value, delta;
  final IconData icon;
  final Color color;
  final bool isLocked;
   final IconData trendIcon;

  const KpiCard({
    required this.label,
    required this.value,
    required this.delta,
    required this.icon,
    required this.color,
    required this.isLocked,
    required this.trendIcon,
    super.key,
  });

  @override
  State<KpiCard> createState() => _KpiCardState();
}

class _KpiCardState extends State<KpiCard> {
  late bool isHover;

  @override
  void initState() {
    super.initState();
    isHover = false;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          MouseRegion(
            onEnter: (event) {
              setState(() {
                isHover = true;
              });
            },
            onExit: (event) {
              setState(() {
                isHover = false;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              transform: Matrix4.translationValues(
                0,
                isHover ? -8 : 0, // déplacement vers le haut
                0,
              ),
              child: Container(
                padding: EdgeInsets.all(isHover ? 16 : 16),
                decoration: BoxDecoration(
                  color: C.card,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: C.border),
                  boxShadow: [
                    BoxShadow(
                      color: C.green.withOpacity(0.04),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: widget.color.withOpacity(0.10),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            widget.icon,
                            color: widget.color,
                            size: 20,
                          ),
                        ),
                        Icon(widget.trendIcon, size: 14, color: C.green),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      widget.value,
                      style: GoogleFonts.lora(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: C.dark,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.label,
                      style: TextStyle(fontSize: 11, color: C.muted),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.delta,
                      style: TextStyle(
                        fontSize: 11,
                        color: widget.color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (widget.isLocked)
            Positioned(
              bottom: 0,
              right: 0,
              top: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(13.r),
                ),
                child: Icon(Icons.lock_rounded, color: C.sidebarMuted),
              ),
            ),
        ],
      ),
    );
  }
}
