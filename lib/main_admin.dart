import 'package:flutter/material.dart';
import 'package:flutter_flavor/app_config.dart';
import 'package:flutter_flavor/widgets/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppConfig configureApp =  const AppConfig(
    environment: AppEnvironment.admin,
    appTitle: 'admin',
    child: MyApp(
      environment: AppEnvironment.admin,
    ),
  );

  runApp(configureApp);
}
