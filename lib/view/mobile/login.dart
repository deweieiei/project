import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginApp extends StatefulWidget {
  LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  bool startusbut = false;

  void login() async {
    if (!startusbut) {
      setState(() {
        startusbut = true;
      });

      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        startusbut = false;
      });
    }
  }

  Widget Input_TextField(String labelStyle, TextEditingController inputtext) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: inputtext,
        decoration: InputDecoration(
          labelText: labelStyle,
          labelStyle: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // ขอบโค้ง 5
            borderSide: const BorderSide(
              color: Colors.white, // สีขอบ
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // ขอบโค้ง 5
            borderSide: const BorderSide(
              color: Colors.white, // สีขอบเมื่อไม่ได้ focus
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // ขอบโค้ง 5
            borderSide: const BorderSide(
              color: Colors.white, // สีขอบเมื่อ focus
              width: 2.0, // ความหนาของขอบเมื่อ focus
            ),
          ),
        ),
      ),
    );
  }

  TextStyle textStyle(double fontSize) {
    return TextStyle(color: Colors.white, fontSize: fontSize);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 380,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 54, 99, 92).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 136, 211, 201)
                        .withOpacity(0.2),
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
                  children: [
                    Text(S.of(context)!.login, style: textStyle(28)),
                    const SizedBox(height: 10),
                    Input_TextField(S.of(context)!.user, user),
                    const SizedBox(height: 10),
                    Input_TextField(S.of(context)!.password, password),
                    !startusbut
                        ? ElevatedButton(
                            onPressed: login,
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 93, 136, 130),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                            ),
                            child: Text(
                              S.of(context)!.login,
                              style: textStyle(16),
                            ),
                          )
                        : const CircularProgressIndicator(
                            color: Color.fromARGB(255, 93, 136, 130)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
