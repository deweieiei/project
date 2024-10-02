import 'package:flutter/material.dart';
import 'package:project/modelsProvider/counter.dart';
import 'package:project/view/mobile/drawar/drawar.dart';

class HomeApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const DrawarApp(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Provider.of(DataProvider());
            },
            child: Text(context.watch<DataProvider>().name_hospital),
          )
        ],
      ),
    );
  }
}
