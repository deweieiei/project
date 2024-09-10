import 'package:flutter/material.dart';

class NavbarApp extends StatelessWidget {
  const NavbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width
    ,height: 50,
    decoration:const BoxDecoration(color: Colors.black),
    );
  }
}
