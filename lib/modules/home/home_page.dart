import 'package:flutter/material.dart';
import 'package:numbersandcalc/modules/rod/bead.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double width = 100.0, height = 100.0;
  late Offset position;

  @override
  void initState() {
    super.initState();
    position = Offset(0.0, height - 20);
  }

  @override
  Widget build(BuildContext context) {
    double initialPosition = 0;
    double incrementalPosition = 45;
    return Scaffold(
      appBar: AppBar(
        title: Text('Soroban'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 370,
          height: 400,
          child: Stack(
            children: [
              Bead(initialPosition: Offset(0.0, initialPosition)),
              // Bead(
              //     initialPosition:
              //         Offset(0.0, initialPosition + incrementalPosition)),
              // Bead(
              //     initialPosition:
              //         Offset(0.0, initialPosition + 2 * incrementalPosition)),
              Bead(
                  initialPosition:
                      Offset(0.0, initialPosition + 3 * incrementalPosition)),
              Bead(
                  initialPosition:
                      Offset(0.0, initialPosition + 4 * incrementalPosition)),
              Bead(
                  initialPosition:
                      Offset(0.0, initialPosition + 5 * incrementalPosition)),
              Bead(
                  initialPosition:
                      Offset(0.0, initialPosition + 6 * incrementalPosition)),
              // Bead(initialPosition: Offset(0.0, 4 * incrementalPosition)),
              // Bead(initialPosition: Offset(0.0, 5 * incrementalPosition)),
            ],
          ),
        ),
      ),
    );
  }
}
