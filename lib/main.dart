import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'pages/homepage.dart';

void main() async {
  await Hive.initFlutter();
  var box=await Hive.openBox("Mybox");
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }

}