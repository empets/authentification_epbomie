

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grace_church/core/enumeration/enumeration_place.dart';
part 'dashboard_event.freezed.dart';

@freezed
sealed class DashboardEvent with _$DashboardEvent  {
   factory DashboardEvent.menuSelected(DashboardMenu menu) = MenuSelectedMenuSelected;
}




