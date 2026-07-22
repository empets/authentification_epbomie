import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnimationMouseHoverCardre extends StatefulWidget {
   const AnimationMouseHoverCardre({super.key, required this.child, this.onHover, this.onEnter, this.onExit, required this.isHover });

  final Widget child;
  final void Function(PointerHoverEvent)? onHover;
  final void Function(PointerEnterEvent)? onEnter;
  final void Function(PointerExitEvent)? onExit;
  final bool isHover;

  @override
  State<AnimationMouseHoverCardre> createState() =>
      _AnimationMouseHoverCardreState();
}

class _AnimationMouseHoverCardreState extends State<AnimationMouseHoverCardre> {
  

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: widget.onEnter,
      onExit: widget.onExit,
      onHover: widget.onHover,
      child: AnimatedContainer(
        duration:  Duration(milliseconds: 200),
        transform: Matrix4.translationValues(
          0,
          widget.isHover ? -8 : 0, // déplacement vers le haut
          0,
        ),
        child: widget.child,
      ),
    );
  }
}
