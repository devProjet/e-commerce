import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final Image st;
  Circle({super.key, required this.st});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey[200],
            ),
            child: Center(
              child: st,
            ),
          ),
        ));
  }
}
