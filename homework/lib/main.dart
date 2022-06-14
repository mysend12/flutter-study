import 'package:flutter/material.dart';
import 'package:homework/ui/home/home_screen.dart';
import 'package:provider/provider.dart';

import 'di/provider_setup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final providers = await getProviders();

  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.yellow,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
