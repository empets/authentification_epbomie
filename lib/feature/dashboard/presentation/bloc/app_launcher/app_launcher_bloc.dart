import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:grace_church/core/bloc_state/bloc_state.dart';
import 'package:grace_church/core/extension/extention.dart';
import 'package:grace_church/feature/authen/domaine/usercase/connexion_implicite_usercase.dart';
import 'package:grace_church/feature/dashboard/domaine/entities/response/home_response.dart';
import 'package:grace_church/feature/dashboard/presentation/bloc/get_profile/event/profile_event.dart';
import 'package:grace_church/feature/depatement/cellule/domaine/entities/request/cellule_request.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart' as shareData;

@lazySingleton
class AppLauncherBloc extends Bloc<ProfileEvent, ApiState<bool>> {
  AppLauncherBloc() : super(ApiState<bool>.initial()) {
    on<ProfileEvent>(isApplauncher);
  }

  Future<void> isApplauncher(
    ProfileEvent event,
    Emitter<ApiState<bool>> emit,
  ) async {
    switch (event) {
      case ProfileEvent():
        emit(ApiState<bool>.load());
        final shared = await shareData.SharedPreferences.getInstance();
        final isAppLauncher = await shared.getString('isAppLauncher') ?? false;
        if (isAppLauncher != "isAppLauncher") {
          emit(ApiState<bool>.failed());
        } else {
          emit(
            ApiState<bool>.success(true, status: FormzSubmissionStatus.success),
          );
        }
        break;
    }
  }
}

@lazySingleton
class ConnexionImpliciteBloc
    extends Bloc<ProfileEvent, ApiState<ProfileResponse>> {
  ConnexionImpliciteBloc({required this.getConnexionImpliciteUsercase})
    : super(ApiState<ProfileResponse>.initial()) {
    on<ProfileEvent>(isApplauncher);
  }

  final GetConnexionImpliciteUsercase getConnexionImpliciteUsercase;

  Future<void> isApplauncher(
    ProfileEvent event,
    Emitter<ApiState<ProfileResponse>> emit,
  ) async {
    switch (event) {
      case GetProfileByDeviceIdProfileEventGetProfileId(:final deviceId):
        emit(ApiState<ProfileResponse>.load());
        final appId = await getDeviceFingerprint();

        final result = await getConnexionImpliciteUsercase.call(
          RequestImpliciteConnexion(deviceId: appId),
        );
        emit(
          result.fold(
            (l) => ApiState<ProfileResponse>.failed(l.message),
            (r) => ApiState<ProfileResponse>.success(
              r,
              status: FormzSubmissionStatus.success,
            ),
          ),
        );
    }
  }
}
