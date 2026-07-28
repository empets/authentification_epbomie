// app_colors.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// app_colors.dart
class AppColors extends ThemeExtension<AppColors> {
  final Color background;
  final Color card;
  final Color dark;
  final Color muted;
  final Color border;
  final Color sidebar;
  final Color sidebarText;
  final Color sidebarMuted;
  final Color green;
  final Color greenLight;
  final Color gold;
  final Color blue;
  final Color violet;
  final Color input;
  final Color red;
  final Color sidebarBackground;

  const AppColors({
    required this.background,
    required this.card,
    required this.dark,
    required this.muted,
    required this.border,
    required this.sidebar,
    required this.sidebarText,
    required this.sidebarMuted,
    required this.green,
    required this.greenLight,
    required this.gold,
    required this.blue,
    required this.violet,
    required this.input,
    required this.red,
    required this.sidebarBackground,
  });

  static const defaultColors = AppColors(
    background: Color(0xFFF0F5F2),
    card: Colors.white,
    dark: Color(0xFF0C1F14),
    muted: Color(0xFF6B8C74),
    border: Color(0x1E14532D),
    sidebar: Color(0xFF071A0E),
    sidebarText: Color(0xFFD4E8DA),
    sidebarMuted: Color(0xFF4A7055),
    green: Color(0xFF14532D),
    greenLight: Color(0xFF166534),
    gold: Color(0xFFD4A017),
    blue: Color(0xFF4A7FA5),
    violet: Color(0xFF7C5A8C),
    input: Color(0xFFE4F0E9),
    red: Colors.red,
    sidebarBackground: Color(0xFF0F1824),
  );

  @override
  AppColors copyWith({
    Color? background, Color? card, Color? dark, Color? muted, Color? border,
    Color? sidebar, Color? sidebarText, Color? sidebarMuted, Color? green,
    Color? greenLight, Color? gold, Color? blue, Color? violet, Color? input, Color? red,
    Color? sidebarBackground,
  }) {
    return AppColors(
      background: background ?? this.background,
      card: card ?? this.card,
      dark: dark ?? this.dark,
      muted: muted ?? this.muted,
      border: border ?? this.border,
      sidebar: sidebar ?? this.sidebar,
      sidebarText: sidebarText ?? this.sidebarText,
      sidebarMuted: sidebarMuted ?? this.sidebarMuted,
      green: green ?? this.green,
      greenLight: greenLight ?? this.greenLight,
      gold: gold ?? this.gold,
      blue: blue ?? this.blue,
      violet: violet ?? this.violet,
      input: input ?? this.input,
      red: red ?? this.red,
      sidebarBackground: sidebarBackground ?? this.sidebarBackground,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      card: Color.lerp(card, other.card, t)!,
      dark: Color.lerp(dark, other.dark, t)!,
      muted: Color.lerp(muted, other.muted, t)!,
      border: Color.lerp(border, other.border, t)!,
      sidebar: Color.lerp(sidebar, other.sidebar, t)!,
      sidebarText: Color.lerp(sidebarText, other.sidebarText, t)!,
      sidebarMuted: Color.lerp(sidebarMuted, other.sidebarMuted, t)!,
      green: Color.lerp(green, other.green, t)!,
      greenLight: Color.lerp(greenLight, other.greenLight, t)!,
      gold: Color.lerp(gold, other.gold, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      violet: Color.lerp(violet, other.violet, t)!,
      input: Color.lerp(input, other.input, t)!,
      red: Color.lerp(red, other.red, t)!,
      sidebarBackground: Color.lerp(sidebarBackground, other.sidebarBackground, t)!,
    );
  }
}



@lazySingleton
class ThemeCubit extends Cubit<AppColors> {
  ThemeCubit() : super(AppColors.defaultColors);

  void updateColor({required AppColors Function(AppColors current) update}) {
    emit(update(state));
  }
}



