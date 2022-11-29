// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wordle_clone/data/words_service.dart' as _i5;
import 'package:wordle_clone/main.dart' as _i3;
import 'package:wordle_clone/pages/game/bloc/game_bloc.dart' as _i6;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.MyApp>(() => _i3.MyApp(key: gh<_i4.Key>()));
    gh.factory<_i5.WordsService>(() => _i5.WordsService());
    gh.factory<_i6.GameBloc>(() => _i6.GameBloc(gh<_i5.WordsService>()));
    return this;
  }
}
