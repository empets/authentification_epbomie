import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/domaine/usercase/get_guest_list_usercase.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/get_profile/event/profile_event.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GuestListBloc extends Bloc<ProfileEvent, ApiState<List<GuestResponse>>> {
  GuestListBloc({required this.getGuestListUsercase})
    : super(ApiState<List<GuestResponse>>.initial()) {
    on<ProfileEvent>(getProfile);
  }

  final GetGuestListUsercase getGuestListUsercase;

  Future<void> getProfile(
    ProfileEvent event,
    Emitter<ApiState<List<GuestResponse>>> emit,
  ) async {
    switch (event) {
      case FetchProfileNumberIdProfileEventFetch(:final numberId):

      if(numberId != null && numberId.isNotEmpty) {
          emit(ApiState<List<GuestResponse>>.load());
        await Future.delayed(Duration(seconds: 4));
        final response = await getGuestListUsercase.call(RequestGetProfile(numberId: numberId.toString()));

        emit(
          response.fold(
            (failure) => ApiState.failed(failure.message),
            (profile) => ApiState.success(profile),
          ),
        );
        
      }

      case FetchProfileAllProfileEventFetch():
        emit(ApiState<List<GuestResponse>>.load());
        await Future.delayed(Duration(seconds: 4));
        final response = await getGuestListUsercase.call(RequestGetProfile(numberId: ''));

        emit(
          response.fold(
            (failure) => ApiState.failed(failure.message),
            (profile) => ApiState.success(profile),
          ),
        );
        
        break;
      
      

    }
  }
}
