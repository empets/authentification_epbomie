import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grace_church/core/animation_hover_mouse/animation_hover_mouse.dart';
import 'package:grace_church/core/extension/custome_extension.dart';
import 'package:grace_church/core/moke/moke_data.dart';

class GroupePieCardMoreDatail extends StatelessWidget {
  GroupePieCardMoreDatail({super.key, required this.data});
  final List<(String, int, Color)> data;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey.shade300,
      title: Text(
        "Répartition des 500 membres actifs par ministère",
        style: context.appTypographie.body.copyWith(
          fontSize: 13,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.h),
          ...List.generate(
            data.length,
            (index) => AnimationMouseHoverCardre(
              isHover: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: data[index].$3,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        data[index].$1,
                        style: TextStyle(fontSize: 10, color: C.dark),
                      ),
                    ),
                    Text(
                      "${data[index].$2}%",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: C.muted,
                        fontFamily: 'monospace',
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 48,
                      height: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: data[index].$2 / 64,
                          backgroundColor: C.border,
                          color: data[index].$3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
