import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/enums/enumerated.dart';
part 'navigate_event.freezed.dart';

@freezed
sealed class NavigateEvent with _$NavigateEvent  {
   factory NavigateEvent.menuSelected(NavigatEnum menu) = MenuSelectedNaviateEvent;
}


