

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';

class KpiCard extends StatelessWidget {
  final String label, value, delta;
  final IconData icon;
  final Color color;
  final bool isLocked;
  const KpiCard({required this.label, required this.value, required this.delta, required this.icon, required this.color, required this.isLocked, super.key});

  @override
  Widget build(BuildContext context) {
    return    Expanded(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: C.card,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: C.border),
                  boxShadow: [BoxShadow(color: C.green.withOpacity(0.04), blurRadius: 8, offset: const Offset(0, 2))],
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
                            color: color.withOpacity(0.10),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(icon, color: color, size: 20),
                        ),
                        Icon(Icons.trending_up, size: 14, color: C.green),
                              ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      value,
                      style: GoogleFonts.lora(fontSize: 28, fontWeight: FontWeight.w600, color: C.dark),
                    ),
                    const SizedBox(height: 4),
                    Text(label, style: TextStyle(fontSize: 11, color: C.muted)),
                    const SizedBox(height: 6),
                    Text(delta, style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              if(isLocked)
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
                    child: Icon(Icons.lock_rounded,color: C.sidebarMuted,),
                  ),
                )
                    ],
          ),
        );
       
  }
}





