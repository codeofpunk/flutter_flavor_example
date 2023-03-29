import 'package:flutter_flavor_example/main.dart';
import 'package:flutter_flavor_example/app_config.dart';
import 'package:flutter/material.dart';

void main() async {
  AppConfig devAppConfig = AppConfig(appName: 'Flavor Example Prod', flavor: 'prod', name: 'bu bir prod');
  Widget app = await initializeApp(devAppConfig);
  runApp(app);
}

/*
flutter run -t lib/main_prod.dart  --release --flavor=prod
flutter build appbundle -t lib/main_prod.dart  --flavor=prod
flutter build apk -t lib/main_prod.dart  --flavor=prod
*/