import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/request/home_request.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/domaine/usercase/get_presence_list_usercase.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/get_profile/event/profile_event.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPresenceListBloc extends Bloc<ProfileEvent, ApiState<List<PresenceResponse>>> {
  GetPresenceListBloc({required this.getPresenceListUsercase})
    : super(ApiState<List<PresenceResponse>>.initial()) {
    on<ProfileEvent>(getProfile);
  }

  final GetPresenceListUsercase getPresenceListUsercase;

  Future<void> getProfile(
    ProfileEvent event,
    Emitter<ApiState<List<PresenceResponse>>> emit,
  ) async {
    switch (event) {

      case FetchProfileAllProfileEventFetch():
        emit(ApiState<List<PresenceResponse>>.load());
        final response = await getPresenceListUsercase.call(RequestGetProfile(numberId: ''));

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
