import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable, camel_case_types
class loginweb extends StatelessWidget {
  loginweb({super.key});
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 480,
        width: 380,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 54, 99, 92).withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 136, 211, 201).withOpacity(0.2),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(S.of(context)!.login),
            Row(
              children: [
                Text("${S.of(context)!.user}:"),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: user,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("${S.of(context)!.password}:"),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: password,
                  ),
                )
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text(S.of(context)!.login)),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 1,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ],
        ),
      ),
    );
  }
}
