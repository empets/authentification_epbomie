
// dashboard_state.dart
import 'package:grace_church/core/enumeration/enumeration_place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dasbord_state.freezed.dart';

@freezed 
sealed class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(DashboardMenu.home) DashboardMenu selectedMenu,
  }) = _DashboardState;

  factory DashboardState.initial() => DashboardState(
    selectedMenu: DashboardMenu.home,
  );
}