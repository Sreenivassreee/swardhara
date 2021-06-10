import 'package:flutter/material.dart';

class Blogs extends StatelessWidget {
  const Blogs({Key? key}) : super(key: key);

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
        body: Container(
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int i) {
              return Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => DetailedPage(),
                    //   ),
                    // );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 170,
                          child: Image.network(
                            'https://dev-resws-hungamatech-com.storage.googleapis.com/featured_content/28900d086b2e2c94199c303c89b69a44_924x520.jpg',
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
                                width: MediaQuery.of(context).size.width - 150,
                                child: Text(
                                  "Music Literacy Mission",
                                  textAlign: TextAlign.start,
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width - 150,
                                child: Text(
                                  "Alankar - Three Swar ascending and descending ",
                                  style: new TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
