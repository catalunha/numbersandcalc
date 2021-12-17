import 'package:flutter/material.dart';

class Bead extends StatefulWidget {
  final Offset initialPosition;
  final Color color;
  const Bead(
      {Key? key, required this.initialPosition, this.color = Colors.black})
      : super(key: key);

  @override
  State<Bead> createState() => _BeadState();
}

class _BeadState extends State<Bead> {
  Offset position = const Offset(0, 0);
  @override
  void initState() {
    super.initState();
    position = widget.initialPosition;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: position.dx,
        top: position.dy,
        // right: position.dy,
        child: GestureDetector(
          onTapDown: (value) {
            setState(() {
              position = const Offset(0, 50);
            });
          },
          onDoubleTap: () {
            setState(() {
              position = const Offset(0, 0);
            });
          },
          child: Container(
            width: 60,
            height: 40,
            color: widget.color,
          ),
        ));
  }
}
