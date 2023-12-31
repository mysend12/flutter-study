import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/dependency_injection.dart';
import 'common/exception/exception_handler.dart';
import 'firebase_options.dart';
import 'ui/home/home_view.dart';

void main() async {
  ExceptionHandler exceptionHandler = ExceptionHandler();
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    exceptionHandler.onErrorDetails(details);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    exceptionHandler.onError(error, stack);
    return true;
  };

  WidgetsFlutterBinding.ensureInitialized();
  await dependencyInjection();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.fetchAndActivate();
  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 1),
      minimumFetchInterval: const Duration(hours: 1),
    ),
  );

  final firebaseMessaging = FirebaseMessaging.instance;

  String? token;
  if (kIsWeb) {
    final vapid = remoteConfig.getString("WEB_PUSH_VAPID");
    token = await firebaseMessaging.getToken(vapidKey: vapid);
  } else {
    token = await firebaseMessaging.getToken();
  }

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
