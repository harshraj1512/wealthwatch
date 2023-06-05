import 'package:flutter/material.dart';
import 'package:wealthwatch/Screens/home.dart';
import 'package:wealthwatch/Screens/statistics.dart';
import 'package:wealthwatch/widgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/model/add_date.dart';

//hello this is my coding 
//commting changes on 06-05-2023
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}
