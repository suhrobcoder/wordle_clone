import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wordle_clone/di/init_get_it.dart';
import 'package:wordle_clone/pages/game/game_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

@Injectable()
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wordle Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GamePage(),
    );
  }
}
