// Importing
import 'package:flutter/material.dart';

// entry point
void main() => runApp(const MyApp());

// Define the root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

//Build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(title: const Text('Hello World App')),
        body: const Center(
          child: Text(
            'Hello, World! It\'s Asmae ',
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
    );
  }
}
