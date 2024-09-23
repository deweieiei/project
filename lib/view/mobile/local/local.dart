// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:project/modelsProvider/counter.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

Future<Database> openDatabaseapp() async {
  Directory app = await getApplicationDocumentsDirectory();
  String dbpart = '${app.path}/smart_healt_data.db';
  final db = await databaseFactoryIo.openDatabase(dbpart);
  return db;
}

Future deletedatabase() async {
  Database db = await openDatabaseapp();
  var store = intMapStoreFactory.store('smart_healt');
  await store.drop(db);
}

Future<bool> Showdatabasedatauserapp() async {
  Database db = await openDatabaseapp();
  var store = intMapStoreFactory.store('smart_healt');
  var records = await store.find(db);

  if ((records.isEmpty)) {
    return false;
  } else {
    return true;
  }
}

Future<void> addDataInfoToDatabase(DataProvider data) async {
  deletedatabase();
  final db = await openDatabaseapp();
  final store = intMapStoreFactory.store('smart_healt');
  final key = await store.add(db, {
    'name_hospital': data.name_hospital,
    'platfromURL': data.platfromURL,
    'care_unit_id': data.care_unit_id,
    'device': '1234',
    'passwordsetting': data.passwordsetting,
    'care_unit': data.care_unit,
    'myapp': data.myapp,
  });

  await db.close();
}

Future<void> updateDataInfoToDatabase(DataProvider data) async {
  final db = await openDatabaseapp();
  final store = intMapStoreFactory.store('smart_healt');
  final key = await store.update(db, {
    'name_hospital': data.name_hospital,
    'platfromURL': data.platfromURL,
  });
  await db.close();
}

Future<List<RecordSnapshot<int, Map<String, Object?>>>> getAllData() async {
  Database db = await openDatabaseapp();
  var store = intMapStoreFactory.store('smart_healt');
  var records = await store.find(db);

  return records;
}
