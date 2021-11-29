import 'package:examen_pillajo_ui/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.cyan,

      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Music")),body: const HomePage(),
         
          backgroundColor: Colors.lime,
          
          ),
    );
  }
}

