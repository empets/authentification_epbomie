
import 'package:flutter/material.dart';
import 'package:grace_church/core/moke/moke_data.dart';

class MenberTableHeader extends StatelessWidget {
  final String text;
  const MenberTableHeader(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: C.muted,
        letterSpacing: 1.2,
      ),
    );
  }
}
