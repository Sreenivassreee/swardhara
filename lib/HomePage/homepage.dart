import 'package:flutter/material.dart';
import 'package:swardhara/HomePage/components/AboutAs.dart';
import 'package:swardhara/HomePage/components/Learn_hindustani.dart';
import 'package:swardhara/HomePage/components/live_performances.dart';
import 'package:swardhara/HomePage/components/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2!,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.minHeight,
                ),
                child: IntrinsicHeight(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 80,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            "Swardhara",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      color: Colors.orange,
                    ),
                    SizedBox(height: 10),
                    Expanded(child: VerticalSlider()),
                    SizedBox(height: 10),
                    Flexible(child: LivePerformances()),
                    SizedBox(height: 10),
                    LearnHisdustaniMusic(),
                    AboutUs()
                  ],
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
