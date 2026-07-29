import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/bloc/event/navigate_event.dart';
import 'package:grace_church/feature/authen/page/dev_profiles/bloc/state/navigate_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class NavigateBloc extends Bloc<NavigateEvent, NavigateState> {
  NavigateBloc() : super( NavigateState.initial()) {
    on<MenuSelectedNaviateEvent>(_onMenuSelected);
  }

  void _onMenuSelected(MenuSelectedNaviateEvent event, Emitter<NavigateState> emit) {
    switch (event) {
      case MenuSelectedNaviateEvent(: final menu):
        emit(state.copyWith(selectedMenu: menu));
        break;
    }
  }
} 