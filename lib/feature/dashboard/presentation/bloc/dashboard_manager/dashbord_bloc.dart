// dashboard_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/dashboard_manager/event/dashboard_event.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/dashboard_manager/state/dasbord_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super( DashboardState.initial()) {
    on<MenuSelectedMenuSelected>(_onMenuSelected);
  }

  void _onMenuSelected(MenuSelectedMenuSelected event, Emitter<DashboardState> emit) {
    switch (event) {
      case MenuSelectedMenuSelected(: final menu):
        emit(state.copyWith(selectedMenu: menu));
        break;
    }
  }
} 