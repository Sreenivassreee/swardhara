import 'package:flutter/material.dart';
import 'package:swardhara/DetailedPage/DetailedPage.dart';

class LearnHisdustaniMusic extends StatefulWidget {
  const LearnHisdustaniMusic({Key? key}) : super(key: key);

  @override
  _LearnHisdustaniMusicState createState() => _LearnHisdustaniMusicState();
}

class _LearnHisdustaniMusicState extends State<LearnHisdustaniMusic> {
  List li = [
    1,
    3,
    4,
    5,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (li.length * 150) + 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10),
              child: Text(
                "Swarotsav - Live Performances",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            child: new ListView.builder(
              //Element-5
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: li.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                  child: Hero(
                    tag: i.toString(),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailedPage(t: i.toString()),
                          ),
                        );
                      },
                      child: Container(
                        height: 130,
                        width: double.infinity,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 100,
                              height: 170,
                              child: Image.network(
                                'https://www.creaticity.co.in/images/eventcity/upcoming/sid-sriram.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Text(
                                      "Complementary Volume - Free lessons to experience the learning process",
                                      style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Text(
                                      "Complementary Volume - Free lessons to experience the learning process",
                                      style: new TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(5.0),
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.orange,
                                        ),
                                      ),
                                      child: Text('Preemium'),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        '11 Lessons',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ],
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
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
