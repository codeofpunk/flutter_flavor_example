import 'package:flutter/material.dart';
import 'package:flutter_flavor_example/app_config.dart';
import 'main.dart';

// void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  final AppConfig appConfig;
  const MyApp(this.appConfig, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       theme: ThemeData(

        primarySwatch: appConfig.flavor == 'dev' ? Colors.yellow : Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}



class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Screen')),

     
      body: const Center(
        child: Text(
          'This is a new screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}