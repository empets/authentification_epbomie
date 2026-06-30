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

import 'injection_container.dart' as _i809;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i345.DatabaseReference>(() => injectableModule.userDb);
    gh.lazySingleton<_i519.Client>(() => injectableModule.httpClient);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => injectableModule.prefs);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => injectableModule.locaDataShared(),
      preResolve: true,
    );
    return this;
  }
}

class _$InjectableModule extends _i809.InjectableModule {}
