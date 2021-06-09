import 'package:flutter/material.dart';

class LearnHisdustaniMusic extends StatelessWidget {
  const LearnHisdustaniMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10),
              child: Text(
                "Swarotsav - Live Performances",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          new ListView.builder(
            //Element-5
            shrinkWrap: true,

            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, i) {
              return Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                child: Container(
                  height: 130,
                  width: double.infinity,

                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 150,
                        child: Image.network(
                          'https://www.creaticity.co.in/images/eventcity/upcoming/sid-sriram.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 150,
                              child: Text(
                                "Complementary Volume - Free lessons to experience the learning process",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 150,
                              child: Text(
                                "Complementary Volume - Free lessons to experience the learning process",
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange,
                              ),
                            ),
                            child: Text('Preemium'),
                          )
                        ],
                      ),
                    ],
                  ),

                  // child: ListTile(
                  // title:
                  // Text(
                  //     "Complementary Volume - Free lessons to experience the learning process"),
                  // subtitle: Text("free"),
                  // leading: Padding(
                  //   padding: const EdgeInsets.all(5.0),
                  //   child: Container(
                  //     height: 200,
                  //     width: 80,
                  //     child: Image.network(
                  //       'https://imgmediagumlet.lbb.in/media/2019/01/5c3c6051e54eed62b2154427_1547460689639.jpg?fm=webp&w=750&h=500&dpr=1',
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // )
                  // ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
