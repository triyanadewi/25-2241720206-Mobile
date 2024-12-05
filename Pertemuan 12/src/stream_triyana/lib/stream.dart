import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,

    //Soal 2
    const Color.fromARGB(255, 31, 94, 126),
    const Color.fromARGB(255, 231, 200, 107),
    const Color.fromARGB(255, 199, 173, 242),
    const Color.fromARGB(255, 14, 64, 111),
    const Color.fromARGB(255, 118, 224, 214)
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
      }
    );
  }
}