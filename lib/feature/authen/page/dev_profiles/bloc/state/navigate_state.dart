// dashboard_state.dart
import 'package:grace_church/feature/authen/page/dev_profiles/enums/enumerated.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navigate_state.freezed.dart';

@freezed 
sealed class NavigateState with _$NavigateState {
  const factory NavigateState({
    @Default(NavigatEnum.home) NavigatEnum selectedMenu,
  }) = _NavigateState;

  factory NavigateState.initial() => NavigateState(
    selectedMenu: NavigatEnum.home,
  );
}