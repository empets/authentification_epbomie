// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_database/firebase_database.dart' as _i345;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../feature/authen/data/repositories/imple_repositories.dart'
    as _i598;
import '../../feature/authen/data/service/impl_remote_service.dart' as _i259;
import '../../feature/authen/data/service/remote_service.dart' as _i166;
import '../../feature/authen/domaine/repository/authen_repository.dart'
    as _i653;
import '../../feature/authen/domaine/usercase/connexion_implicite_usercase.dart'
    as _i16;
import '../../feature/authen/domaine/usercase/create_profile_engagement.dart'
    as _i1031;
import '../../feature/authen/domaine/usercase/create_profile_usercase.dart'
    as _i855;
import '../../feature/authen/domaine/usercase/create_social_profile_usercase.dart'
    as _i561;
import '../../feature/authen/domaine/usercase/create_spiritual_profile.dart'
    as _i127;
import '../../feature/authen/domaine/usercase/signin_profile.dart' as _i409;
import '../../feature/authen/domaine/usercase/update_profile_deviceid_usercase.dart'
    as _i240;
import '../../feature/authen/domaine/usercase/update_profile_usercase.dart'
    as _i256;
import '../../feature/authen/page/dev_profiles/bloc/navigate_bloc.dart'
    as _i779;
import '../../feature/dashboard/data/repositories/home_data_repositories.dart'
    as _i69;
import '../../feature/dashboard/data/service/remot_service.dart' as _i736;
import '../../feature/dashboard/data/service/repository_remote_service.dart'
    as _i941;
import '../../feature/dashboard/data/service/steam_remote_service.dart'
    as _i204;
import '../../feature/dashboard/domaine/repository/home_domain_repository.dart'
    as _i245;
import '../../feature/dashboard/domaine/usercase/get_guest_list_usercase.dart'
    as _i837;
import '../../feature/dashboard/domaine/usercase/get_presence_list_usercase.dart'
    as _i391;
import '../../feature/dashboard/domaine/usercase/get_profile_usercase.dart'
    as _i729;
import '../../feature/dashboard/presentation/bloc/app_launcher/app_launcher_bloc.dart'
    as _i304;
import '../../feature/dashboard/presentation/bloc/dashboard_manager/dashbord_bloc.dart'
    as _i846;
import '../../feature/dashboard/presentation/bloc/get_presence/get_presence_bloc.dart'
    as _i648;
import '../../feature/dashboard/presentation/bloc/get_profile/get_profile_bloc.dart'
    as _i811;
import '../../feature/dashboard/presentation/bloc/guest/guest_list_bloc.dart'
    as _i1046;
import '../../feature/dashboard/presentation/pages/kpi/bloc/menber_kpi_bloc.dart'
    as _i735;
import '../../feature/depatement/cellule/data/repositories/cellule_imple_repositories.dart'
    as _i389;
import '../../feature/depatement/cellule/data/services/celllule_repositories_remote_services.dart'
    as _i87;
import '../../feature/depatement/cellule/data/services/cellule_imple_repositories_remot_services.dart'
    as _i277;
import '../../feature/depatement/cellule/domaine/repositories/cellule_repositories_domaine.dart'
    as _i521;
import '../../feature/depatement/cellule/domaine/usecase/get_cellule_usercase.dart'
    as _i56;
import '../../feature/depatement/cellule/domaine/usecase/get_list_responsable_cellule_usercase.dart'
    as _i702;
import '../../feature/depatement/cellule/domaine/usecase/get_list_secteur.dart'
    as _i643;
import '../../feature/depatement/cellule/domaine/usecase/get_list_zone.dart'
    as _i448;
import '../../feature/depatement/cellule/domaine/usecase/get_rapport_cellule_usercase.dart'
    as _i577;
import '../../feature/depatement/cellule/domaine/usecase/rapport_cellule_admine_usercase.dart'
    as _i444;
import '../../feature/depatement/cellule/domaine/usecase/rapport_cellule_stat_usercase.dart'
    as _i238;
import '../../feature/depatement/cellule/domaine/usecase/rapport_cellule_state_usercase.dart'
    as _i578;
import '../../feature/depatement/cellule/domaine/usecase/rapport_cellule_suggestion_usercase.dart'
    as _i8;
import '../../feature/depatement/cellule/presentation/bloc/cellule_bloc.dart'
    as _i323;
import '../../feature/depatement/cellule/presentation/bloc/get_responsable_cellue_bloc.dart'
    as _i22;
import '../../feature/depatement/cellule/presentation/bloc/get_responsable_secteur.dart'
    as _i868;
import '../../feature/depatement/cellule/presentation/bloc/get_responsable_zone.dart'
    as _i352;
import '../../feature/depatement/cellule/presentation/bloc/rapport_cellule.dart/get_rapport_cellule_bloc.dart'
    as _i702;
import '../color/color_information.dart' as _i887;
import 'injection_container.dart' as _i809;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    gh.factory<_i779.NavigateBloc>(() => _i779.NavigateBloc());
    gh.factory<_i846.DashboardBloc>(() => _i846.DashboardBloc());
    gh.lazySingleton<_i887.ThemeCubit>(() => _i887.ThemeCubit());
    gh.lazySingleton<_i345.DatabaseReference>(() => injectableModule.userDb);
    gh.lazySingleton<_i519.Client>(() => injectableModule.httpClient);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => injectableModule.prefs);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => injectableModule.locaDataShared(),
      preResolve: true,
    );
    gh.lazySingleton<_i204.ImpleSteamRemoteService>(
      () => _i204.ImpleSteamRemoteService(),
    );
    gh.lazySingleton<_i304.AppLauncherBloc>(() => _i304.AppLauncherBloc());
    gh.lazySingleton<_i259.AuthenRemoteService>(
      () => _i166.ImplRemoteService(db: gh<_i345.DatabaseReference>()),
    );
    gh.lazySingleton<_i941.DomaineServiceRepository>(
      () =>
          _i736.ImpDomaineServiceRepository(db: gh<_i345.DatabaseReference>()),
    );
    gh.lazySingleton<_i87.CellluleRepositoriesRemoteServices>(
      () => _i277.CelluleImpleRepositoriesRemotServices(
        db: gh<_i345.DatabaseReference>(),
      ),
    );
    gh.lazySingleton<_i653.AuthenRepository>(
      () => _i598.ImpleAuthenRepository(
        authenRemoteService: gh<_i259.AuthenRemoteService>(),
      ),
    );
    gh.lazySingleton<_i521.CelluleRepositoriesDomaine>(
      () => _i389.CelluleImpleRepositories(
        cellluleRepositoriesRemoteServices:
            gh<_i87.CellluleRepositoriesRemoteServices>(),
      ),
    );
    gh.lazySingleton<_i56.GetCelluleUsercase>(
      () => _i56.GetCelluleUsercase(gh<_i521.CelluleRepositoriesDomaine>()),
    );
    gh.lazySingleton<_i702.GetListResponsableCelluleUsercase>(
      () => _i702.GetListResponsableCelluleUsercase(
        gh<_i521.CelluleRepositoriesDomaine>(),
      ),
    );
    gh.lazySingleton<_i643.GetListSecteurUsercase>(
      () =>
          _i643.GetListSecteurUsercase(gh<_i521.CelluleRepositoriesDomaine>()),
    );
    gh.lazySingleton<_i448.GetListZoneUsercase>(
      () => _i448.GetListZoneUsercase(gh<_i521.CelluleRepositoriesDomaine>()),
    );
    gh.lazySingleton<_i577.GetRapportCelluleUsercase>(
      () => _i577.GetRapportCelluleUsercase(
        gh<_i521.CelluleRepositoriesDomaine>(),
      ),
    );
    gh.lazySingleton<_i444.SendRapportCelluleStepAdministrationUsercase>(
      () => _i444.SendRapportCelluleStepAdministrationUsercase(
        gh<_i521.CelluleRepositoriesDomaine>(),
      ),
    );
    gh.lazySingleton<_i238.SendRapportCelluleStepStatUsercase>(
      () => _i238.SendRapportCelluleStepStatUsercase(
        gh<_i521.CelluleRepositoriesDomaine>(),
      ),
    );
    gh.lazySingleton<_i578.SendRapportCelluleStepAssistantUsercase>(
      () => _i578.SendRapportCelluleStepAssistantUsercase(
        gh<_i521.CelluleRepositoriesDomaine>(),
      ),
    );
    gh.lazySingleton<_i8.SendRapportCelluleStepSuggestionUsercase>(
      () => _i8.SendRapportCelluleStepSuggestionUsercase(
        gh<_i521.CelluleRepositoriesDomaine>(),
      ),
    );
    gh.lazySingleton<_i868.GetSecteurBloc>(
      () => _i868.GetSecteurBloc(
        getListSecteurUsercase: gh<_i643.GetListSecteurUsercase>(),
      ),
    );
    gh.lazySingleton<_i323.CelluleBloc>(
      () =>
          _i323.CelluleBloc(getCelluleUsercase: gh<_i56.GetCelluleUsercase>()),
    );
    gh.lazySingleton<_i22.GetResponsableCelluleBloc>(
      () => _i22.GetResponsableCelluleBloc(
        getListResponsableCelluleUsercase:
            gh<_i702.GetListResponsableCelluleUsercase>(),
      ),
    );
    gh.lazySingleton<_i245.HomeDomaineRepository>(
      () => _i69.ImpleHomeDataRepositories(
        domaineServiceRepository: gh<_i941.DomaineServiceRepository>(),
      ),
    );
    gh.lazySingleton<_i837.GetGuestListUsercase>(
      () => _i837.GetGuestListUsercase(gh<_i245.HomeDomaineRepository>()),
    );
    gh.lazySingleton<_i391.GetPresenceListUsercase>(
      () => _i391.GetPresenceListUsercase(gh<_i245.HomeDomaineRepository>()),
    );
    gh.lazySingleton<_i729.GetProfileUsercase>(
      () => _i729.GetProfileUsercase(gh<_i245.HomeDomaineRepository>()),
    );
    gh.lazySingleton<_i648.GetPresenceListBloc>(
      () => _i648.GetPresenceListBloc(
        getPresenceListUsercase: gh<_i391.GetPresenceListUsercase>(),
      ),
    );
    gh.lazySingleton<_i16.GetConnexionImpliciteUsercase>(
      () => _i16.GetConnexionImpliciteUsercase(gh<_i653.AuthenRepository>()),
    );
    gh.lazySingleton<_i1031.CreateEngagementProfileUsercase>(
      () =>
          _i1031.CreateEngagementProfileUsercase(gh<_i653.AuthenRepository>()),
    );
    gh.lazySingleton<_i855.CreateProfileUsercase>(
      () => _i855.CreateProfileUsercase(gh<_i653.AuthenRepository>()),
    );
    gh.lazySingleton<_i561.CreateSocialProfileUsercase>(
      () => _i561.CreateSocialProfileUsercase(gh<_i653.AuthenRepository>()),
    );
    gh.lazySingleton<_i127.CreateSpiritualProfileUsercase>(
      () => _i127.CreateSpiritualProfileUsercase(gh<_i653.AuthenRepository>()),
    );
    gh.lazySingleton<_i409.CreateSignInProfileUsercase>(
      () => _i409.CreateSignInProfileUsercase(gh<_i653.AuthenRepository>()),
    );
    gh.lazySingleton<_i240.UpdateProfileDeviceIdUsercase>(
      () => _i240.UpdateProfileDeviceIdUsercase(gh<_i653.AuthenRepository>()),
    );
    gh.lazySingleton<_i256.UpdateProfileUsercase>(
      () => _i256.UpdateProfileUsercase(gh<_i653.AuthenRepository>()),
    );
    gh.lazySingleton<_i304.ConnexionImpliciteBloc>(
      () => _i304.ConnexionImpliciteBloc(
        getConnexionImpliciteUsercase: gh<_i16.GetConnexionImpliciteUsercase>(),
      ),
    );
    gh.lazySingleton<_i352.GetZoneBloc>(
      () => _i352.GetZoneBloc(
        getListZoneUsercase: gh<_i448.GetListZoneUsercase>(),
      ),
    );
    gh.lazySingleton<_i702.GetRapportCelluleBloc>(
      () => _i702.GetRapportCelluleBloc(
        getRapportCelluleUsercase: gh<_i577.GetRapportCelluleUsercase>(),
      ),
    );
    gh.lazySingleton<_i1046.GuestListBloc>(
      () => _i1046.GuestListBloc(
        getGuestListUsercase: gh<_i837.GetGuestListUsercase>(),
      ),
    );
    gh.lazySingleton<_i811.GetProfileBloc>(
      () => _i811.GetProfileBloc(
        getProfileUsercase: gh<_i729.GetProfileUsercase>(),
      ),
    );
    gh.lazySingleton<_i735.MenberKpiBloc>(
      () => _i735.MenberKpiBloc(
        getProfileUsercase: gh<_i729.GetProfileUsercase>(),
      ),
    );
    return this;
  }
}

class _$InjectableModule extends _i809.InjectableModule {}
