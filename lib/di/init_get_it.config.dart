// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;
import 'package:wordle_clone/data/shared_prefs.dart' as _i6;
import 'package:wordle_clone/data/words_service.dart' as _i7;
import 'package:wordle_clone/di/app_module.dart' as _i9;
import 'package:wordle_clone/main.dart' as _i3;
import 'package:wordle_clone/pages/game/bloc/game_bloc.dart' as _i8;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.MyApp>(() => _i3.MyApp(key: gh<_i4.Key>()));
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i6.SharedPrefs>(_i6.SharedPrefs(gh<_i5.SharedPreferences>()));
    gh.factory<_i7.WordsService>(() => _i7.WordsService());
    gh.factory<_i8.GameBloc>(() => _i8.GameBloc(
          gh<_i7.WordsService>(),
          gh<_i6.SharedPrefs>(),
        ));
    return this;
  }
}

class _$AppModule extends _i9.AppModule {}
