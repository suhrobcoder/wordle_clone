import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wordle_clone/di/init_get_it.dart';

void main() async {
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
      home: const Text('Flutter Demo Home Page'),
    );
  }
}
