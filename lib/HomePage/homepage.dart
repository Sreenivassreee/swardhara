import 'package:flutter/material.dart';
import 'package:swardhara/HomePage/components/live_performances.dart';
import 'package:swardhara/HomePage/components/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: double.infinity,
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
                    Expanded(
                      child: Container(
                          color: const Color(0xffee0000), // Red
                          height: 120.0,
                          alignment: Alignment.center,
                          child: VerticalSlider()),
                    ),
                    Expanded(child: LivePerformances()),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // SingleChildScrollView(

  //   scrollDirection: Axis.vertical,
  //   physics: BouncingScrollPhysics(),
  //   child: Scaffold(
  //       body: Column(
  //     children: [
  //       Container(
  //         height: 80,
  //         width: double.infinity,
  //         child: Center(
  //           child: Padding(
  //             padding: const EdgeInsets.only(top: 40),
  //             child: Text(
  //               "Swardhara",
  //               style: TextStyle(fontSize: 30),
  //             ),
  //           ),
  //         ),
  //         color: Colors.orange,
  //       ),
  //       Expanded(child: VerticalSlider()),
  //       Expanded(child: LivePerformances())
  //     ],
  //   )),
  // );
  // }
}
