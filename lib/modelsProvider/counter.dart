import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class DataProvider with ChangeNotifier {
  String? name_hospital;
  String? platfromURL;
  String? care_unit_id;

  String? passwordsetting;
  String? care_unit;
  String? myapp;
}
