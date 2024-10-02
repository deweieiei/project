import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class DataProvider with ChangeNotifier {
  Widget? viewhomeapp;

  String? name_hospital;
  String? platfromURL;
  String? care_unit_id;

  String? passwordsetting;
  String? care_unit;
  String? myapp;

  void viewhome(int x) {
    if (x == 1) {
      viewhomeapp = const Center(child: Text("1"));
      notifyListeners();
    } else {
      viewhomeapp = const Center(child: Text(">1"));
      notifyListeners();
    }
  }
}
