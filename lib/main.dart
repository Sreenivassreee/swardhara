import 'package:flutter/material.dart';
import 'package:swardhara/HomePage/homepage.dart';
import 'package:swardhara/NavBarActions/NavBar.dart';

void main() =>runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swardhara',
      home: NavBar(),
      
    );
  }
}