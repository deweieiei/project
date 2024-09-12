import 'package:flutter/material.dart';
import 'package:project/view/web/layer/navbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class IndexWeb extends StatelessWidget {
  IndexWeb({super.key});
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const NavbarApp(),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
            //  Image.asset(""),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color.fromARGB(200, 255, 255, 255),
                    border: Border.all(color: Colors.white)),
                width: 100,
                height: 180,
                child: Column(
                  children: [
                    Row(children: [
                      Text(S.of(context)!.user),
                      TextField(controller: user)
                    ]),
                    Row(children: [
                      Text(S.of(context)!.password),
                      TextField(controller: password)
                    ])
                  ],
                ),
              )
            ],
          )),
    );
  }
}
