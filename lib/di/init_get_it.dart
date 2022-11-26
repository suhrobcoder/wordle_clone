import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wordle_clone/di/init_get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async => getIt.init();
