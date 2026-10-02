import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List image = [
      "assets/images/1.jpg",
      "assets/images/2.jpg",
      "assets/images/3.jpg",
      "assets/images/4.jpg",
      "assets/images/5.jpg",
      "assets/images/6.jpg",
      "assets/images/7.jpg",
      "assets/images/8.jpg",
      "assets/images/9.jpg",
      "assets/images/10.jpg",
    ];
    List names = [
      "Ahmad Haider",
      "Ali Alasale",
      "Hamza ",
      "Hasan",
      "Saeed",
      "hasan",
      "bilal",
      "bayan",
      "sara",
      "soos",
    ];
    List timer = [
      "Sent 5h ago",
      "Active today",
      "Sent 15h ago",
      "2h الحمدلله ",
      "Sent 12h ago",
      "Active yesterday",
      "Active now",
      "Active today",
      "Reacted to your massage.2d",
      "seen by soso",
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.format_list_bulleted, color: Colors.white),
              SizedBox(width: 170),
              Text("2h_ki_", style: TextStyle(color: Colors.white)),
              Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white),
              Icon(Icons.circle, size: 12, color: Colors.red),
              SizedBox(width: 130),
              Icon(Icons.trending_up, color: Colors.white),
              Icon(Icons.mode_edit_outline_outlined, color: Colors.white),
            ],
          ),
        ),
        ////////////////////////////
        body: ListView(
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: const Color.fromARGB(255, 55, 53, 53),
              ),
              height: 45,
              width: 50,

              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 16),
                  Icon(Icons.search, size: 25, color: Colors.grey),
                  SizedBox(width: 16),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),
            SizedBox(
              height: 100,

              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(image[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                itemCount: image.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Container(
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  margin: EdgeInsets.only(left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.tune_sharp, size: 20, color: Colors.white),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, size: 10, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        "Primary 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Requests",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "General",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),

                      width: 70,
                      height: 80,
                      //margin: EdgeInsets.only(left: 15, rightr: 15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(image[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          names[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          timer[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                );
              },
              itemCount: image.length,
              scrollDirection: Axis.vertical,
            ),
          ],
        ),
      ),
    );
  }
}
