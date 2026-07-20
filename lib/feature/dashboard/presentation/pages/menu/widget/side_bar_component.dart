

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gracechurchadmine/core/moke/moke_data.dart';

// ── Nav tile ──────────────────────────────────────────────────────────────────
class NavItem {
  final IconData icon;
  final String label;
  const NavItem({required this.icon, required this.label});
}

class NavTile extends StatelessWidget {
  final NavItem item;
  final bool selected;
  final VoidCallback onTap;
  const NavTile({required this.item, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 1),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? C.gold.withOpacity(0.10) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            if (selected)
              Container(
                width: 2,
                height: 18,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(color: C.gold, borderRadius: BorderRadius.circular(2)),
              ),
            Icon(
              item.icon,
              size: 16,
              color: selected ? C.background : C.sidebarMuted,
            ),
            const SizedBox(width: 10),
            Text(
              item.label,
              style: GoogleFonts.roboto(
                color: selected ? C.background : C.sidebarText.withOpacity(0.6),
                fontSize: 13,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SidebarAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? iconColor;
  final VoidCallback? onTap;
  const SidebarAction({required this.icon,  required this.label, this.iconColor  = C.sidebarMuted, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: TextButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 15, color: iconColor),
        label: Text(label, style: GoogleFonts.roboto(color: C.sidebarText.withOpacity(0.6), fontSize: 13)),
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}