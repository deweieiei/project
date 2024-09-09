import 'package:flutter/material.dart';
import 'package:project/view/layer/navbar.dart';
 

class IndexApp extends StatelessWidget {
  const IndexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title:const NavbarApp(),),
      body: Container(),
    );
  }
}