import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project/view/web/login.dart';

// ignore: must_be_immutable
class IndexWeb extends StatelessWidget {
  IndexWeb({super.key});
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: loginweb(),
    );
  }
}
