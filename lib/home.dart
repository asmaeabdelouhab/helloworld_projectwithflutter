import 'package:flutter/material.dart';
import 'package:first_project/plant_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Plant ID', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )),
          backgroundColor: Colors.green[700],
          centerTitle: true,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.green[200],
                padding: const EdgeInsets.all(20),
                child: const Text('How I care for my plant...'),
              ),
              Container(
                color: Colors.green[100],
                padding: const EdgeInsets.all(20),
                child: const PlantPrefs(),
              ),
              Expanded(
                child: Image.asset('assets/img/plant_bg.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ]
        )
    );
  }
}