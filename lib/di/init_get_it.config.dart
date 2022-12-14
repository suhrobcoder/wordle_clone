// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;
import 'package:wordle_clone/data/shared_prefs.dart' as _i4;
import 'package:wordle_clone/data/words_service.dart' as _i5;
import 'package:wordle_clone/di/app_module.dart' as _i8;
import 'package:wordle_clone/pages/game/bloc/game_bloc.dart' as _i6;
import 'package:wordle_clone/pages/home/bloc/home_bloc.dart' as _i7;

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
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i4.SharedPrefs>(_i4.SharedPrefs(gh<_i3.SharedPreferences>()));
    gh.factory<_i5.WordsService>(() => _i5.WordsService());
    gh.factoryParam<_i6.GameBloc, bool, dynamic>((
      isLatin,
      _,
    ) =>
        _i6.GameBloc(
          gh<_i5.WordsService>(),
          gh<_i4.SharedPrefs>(),
          isLatin,
        ));
    gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc(gh<_i4.SharedPrefs>()));
    return this;
  }
}

class _$AppModule extends _i8.AppModule {}
