import 'package:flutter/material.dart';

class LivePerformances extends StatelessWidget {
  const LivePerformances({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
        Container(
          height: 150,
          child: Center(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 130,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://imgmediagumlet.lbb.in/media/2019/01/5c3c6051e54eed62b2154427_1547460689639.jpg?fm=webp&w=750&h=500&dpr=1',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
