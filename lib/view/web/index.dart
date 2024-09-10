import 'package:flutter/material.dart';
import 'package:project/view/web/layer/navbar.dart';
 
 

 
class IndexWeb extends StatelessWidget {
  const IndexWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const NavbarApp(),),
      body: Container(),
    );
  }
}