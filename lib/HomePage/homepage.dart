import 'package:flutter/material.dart';
import 'package:swardhara/HomePage/components/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(child: Scaffold(body: Container(child: VerticalSlider(),),))
    );
  }
}