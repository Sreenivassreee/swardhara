import 'package:flutter/material.dart';

class SuggestedPage extends StatelessWidget {
  SuggestedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Hero(
                    tag: "123",
                    child: Image.network(
                      'https://imgmediagumlet.lbb.in/media/2019/01/5c3c6051e54eed62b2154427_1547460689639.jpg?fm=webp&w=750&h=500&dpr=1',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 10,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.orange,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          'Lag Ja Gale',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lag Ja Gale",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orange,
                          ),
                        ),
                        child: Text('Free'),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Lag Ja Gale - By Gauri Kavi\nGerms of Golden Era,HMG Group,May 2016.\nVenue - Shamukhananda Auditorium, MUmbai",
                        style: TextStyle(),
                      ),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Suggested',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                // physics: BouncingScrollPhysics(),

                primary: false,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, bottom: 10),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 140,
                              child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/c/c3/Sid_Sriram.jpg',
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
                                    alignment: Alignment.topLeft,
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Text(
                                      "Ae Meri Zohra",
                                      style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Text(
                                      "Ae Meri Zohra jab in -By Shurjo Bhbattacharya Gems of Golden Era,HMG Group ,May 2016",
                                      style: new TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: const EdgeInsets.all(5.0),
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.orange,
                                      ),
                                    ),
                                    child: Text('Free'),
                                  ),
                                ),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
