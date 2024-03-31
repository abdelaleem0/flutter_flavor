import 'package:flutter/material.dart';
import 'package:flutter_flavor/app_config.dart';

class HomePage extends StatefulWidget {
  final AppEnvironment environment;

  const HomePage(this.environment, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.environment == AppEnvironment.admin
          ? const Color(0xF8944949)
          : const Color(0xFF6081D5),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          '${widget.environment.name} App',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      )),
    );
  }
}
