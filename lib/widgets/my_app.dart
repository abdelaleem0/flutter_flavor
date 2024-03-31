import 'package:flutter/material.dart';
import 'package:flutter_flavor/app_config.dart';
import 'package:flutter_flavor/widgets/notes_page.dart';

class MyApp extends StatelessWidget {
  final AppEnvironment environment;

  const MyApp({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(environment),
    );
  }
}
