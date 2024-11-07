// A widget that displays the picture taken by the user.
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kamera_flutter/widget/filter_carousel.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - 2241720206')),
      body: PhotoFilterCarousel(filePath: imagePath), // Tugas
    );
  }
}