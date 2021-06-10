import 'package:flutter/material.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text(
          "Swardhara",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Text("You havent subscribe for any curriculum yet"),
      ),
    );
  }
}
