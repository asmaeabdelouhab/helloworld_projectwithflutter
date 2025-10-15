import 'package:flutter/material.dart';

class PlantPrefs extends StatelessWidget {
  const PlantPrefs({super.key});

  void increaseLightIntensity() {
    print('inc light intensity by 1');
  }
  void decreaseLightIntensity() {
    print('dec light intensity by 1');
  }
  void increaseWatering() {
    print('inc watering by 1');
  }
  void decreaseWatering() {
    print('dec watering by 1');
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
                const Text(
                  '🌼 Daisy',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                    children: [
                      const Text('Light: '),
                      const Text('2'),
                      Icon(
                        Icons.wb_sunny,
                        size: 25,
                        color: Colors.orange[300],
                      ),
                      const Expanded(child: SizedBox()),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 36),
                        ),
                        onPressed: decreaseLightIntensity,
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 36),
                        ),
                        onPressed: increaseLightIntensity,
                        child: const Text('+'),
                      ),
                    ]
                ),
                Row(
                    children: [
                      const Text('Water/Day: '),
                      const Text('1'),
                      Icon(
                        Icons.water_drop,
                        size: 25,
                        color: Colors.blue[300],
                      ),
                      const Expanded(child: SizedBox()),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 36),
                        ),
                        onPressed: decreaseWatering,
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 36),
                        ),
                        onPressed: increaseWatering,
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
                const Text(
                  '🌹 Rose',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                    children: [
                      const Text('Light: '),
                      const Text('4'),
                      Icon(
                        Icons.wb_sunny,
                        size: 25,
                        color: Colors.orange[300],
                      ),
                      const Expanded(child: SizedBox()),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 36),
                        ),
                        onPressed: decreaseLightIntensity,
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 36),
                        ),
                        onPressed: increaseLightIntensity,
                        child: const Text('+'),
                      ),
                    ]
                ),
                Row(
                    children: [
                      const Text('Water/Day: '),
                      const Text('3'),
                      Icon(
                        Icons.water_drop,
                        size: 25,
                        color: Colors.blue[300],
                      ),
                      const Expanded(child: SizedBox()),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 36),
                        ),
                        onPressed: decreaseWatering,
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(40, 36),
                        ),
                        onPressed: increaseWatering,
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