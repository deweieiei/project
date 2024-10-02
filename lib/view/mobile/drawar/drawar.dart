import 'package:flutter/material.dart';

class DrawarApp extends StatelessWidget {
  const DrawarApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.6,
      decoration: const BoxDecoration(color: Colors.white),
    );
  }
}
