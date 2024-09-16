import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [Container()],
        ),
      ),
    );
  }
}
