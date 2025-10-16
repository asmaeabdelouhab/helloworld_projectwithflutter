import 'package:flutter/material.dart';
import 'package:first_project/styled_body_text.dart';
import 'package:first_project/styled_button.dart';

class PlantPrefs extends StatefulWidget {
  const PlantPrefs({super.key});

  @override
  State<PlantPrefs> createState() => _PlantPrefsState();
}

class _PlantPrefsState extends State<PlantPrefs> {
  // Daisy plant values
  int daisyLight = 2;
  int daisyWater = 1;

  // Rose plant values
  int roseLight = 4;
  int roseWater = 3;

  // Maximum limits
  final int maxLight = 6;
  final int maxWater = 4;

  void increaseDaisyLight() {
    setState(() {
      if (daisyLight >= maxLight) {
        daisyLight = 0;
      } else {
        daisyLight++;
      }
    });
  }

  void decreaseDaisyLight() {
    setState(() {
      if (daisyLight <= 0) {
        daisyLight = maxLight;
      } else {
        daisyLight--;
      }
    });
  }

  void increaseDaisyWater() {
    setState(() {
      if (daisyWater >= maxWater) {
        daisyWater = 0;
      } else {
        daisyWater++;
      }
    });
  }

  void decreaseDaisyWater() {
    setState(() {
      if (daisyWater <= 0) {
        daisyWater = maxWater;
      } else {
        daisyWater--;
      }
    });
  }

  void increaseRoseLight() {
    setState(() {
      if (roseLight >= maxLight) {
        roseLight = 0;
      } else {
        roseLight++;
      }
    });
  }

  void decreaseRoseLight() {
    setState(() {
      if (roseLight <= 0) {
        roseLight = maxLight;
      } else {
        roseLight--;
      }
    });
  }

  void increaseRoseWater() {
    setState(() {
      if (roseWater >= maxWater) {
        roseWater = 0;
      } else {
        roseWater++;
      }
    });
  }

  void decreaseRoseWater() {
    setState(() {
      if (roseWater <= 0) {
        roseWater = maxWater;
      } else {
        roseWater--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          // Daisy Plant
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const StyledBodyText('🌼 Daisy'),
                const SizedBox(height: 10),
                Row(
                    children: [
                      const Text('Light: '),
                      Text('$daisyLight'),
                      Icon(
                        Icons.wb_sunny,
                        size: 25,
                        color: Colors.orange[300],
                      ),
                      const Expanded(child: SizedBox()),
                      StyledButton(
                        onPressed: decreaseDaisyLight,
                        backgroundColor: Colors.red,
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 8),
                      StyledButton(
                        onPressed: increaseDaisyLight,
                        backgroundColor: Colors.green,
                        child: const Text('+'),
                      ),
                    ]
                ),
                Row(
                    children: [
                      const Text('Water/Day: '),
                      Text('$daisyWater'),
                      Icon(
                        Icons.water_drop,
                        size: 25,
                        color: Colors.blue[300],
                      ),
                      const Expanded(child: SizedBox()),
                      StyledButton(
                        onPressed: decreaseDaisyWater,
                        backgroundColor: Colors.red,
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 8),
                      StyledButton(
                        onPressed: increaseDaisyWater,
                        backgroundColor: Colors.blue,
                        child: const Text('+'),
                      ),
                    ]
                ),
              ],
            ),
          ),

          // Divider between plants
          Divider(color: Colors.green[300], thickness: 2),
          const SizedBox(height: 10),

          // Rose Plant
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const StyledBodyText('🌹 Rose'),
                const SizedBox(height: 10),
                Row(
                    children: [
                      const Text('Light: '),
                      Text('$roseLight'),
                      Icon(
                        Icons.wb_sunny,
                        size: 25,
                        color: Colors.orange[300],
                      ),
                      const Expanded(child: SizedBox()),
                      StyledButton(
                        onPressed: decreaseRoseLight,
                        backgroundColor: Colors.red,
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 8),
                      StyledButton(
                        onPressed: increaseRoseLight,
                        backgroundColor: Colors.green,
                        child: const Text('+'),
                      ),
                    ]
                ),
                Row(
                    children: [
                      const Text('Water/Day: '),
                      Text('$roseWater'),
                      Icon(
                        Icons.water_drop,
                        size: 25,
                        color: Colors.blue[300],
                      ),
                      const Expanded(child: SizedBox()),
                      StyledButton(
                        onPressed: decreaseRoseWater,
                        backgroundColor: Colors.red,
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 8),
                      StyledButton(
                        onPressed: increaseRoseWater,
                        backgroundColor: Colors.blue,
                        child: const Text('+'),
                      ),
                    ]
                ),
              ],
            ),
          ),
        ]
    );
  }
}