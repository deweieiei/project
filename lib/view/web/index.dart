import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class IndexWeb extends StatelessWidget {
  IndexWeb({super.key});
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        // appBar: AppBar(
        //   title: const NavbarApp(),
        // ),
        body: Center(
          child: Container(
            height: 380,
            width: 480,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 88, 56, 56)
                  .withOpacity(0.5), // ทำให้ดูโปร่งแสง
              borderRadius: BorderRadius.circular(20), // ขอบโค้งมน
              border: Border.all(
                color: const Color.fromARGB(255, 54, 33, 33).withOpacity(0.3),
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 211, 67, 67).withOpacity(0.2),
                  blurRadius: 10, spreadRadius: -7,
                  offset: const Offset(0, 0), // เงาที่อยู่ด้านล่าง
                ),
              ],
            ),
          ),
        ));
  }
}
