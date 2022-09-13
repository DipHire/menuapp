import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:menuapp/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:menuapp/util/menuitems.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({super.key});

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  final collectionstrem =
      FirebaseFirestore.instance.collection('menu').snapshots();
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "Rice Plate",
      "Chapati",
      "Batata Bhaji",
      "chole bhaji",
      "Batata Bhaji",
      "chole bhaji",
      "White Rice",
      "Masala Rice",
      "Papad",
      "Launcha",
      "Pani",
      "Masala Rice",
      "Papad",
      "Launcha",
      "Pani",
    ];
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),

            Row(
              children: [
                Container(
                  height: 120.0,
                  //hotel logo image

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/food.png')),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Hotel name

                      Text(
                        'Hotel Name',
                        style: kh2headline,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //description of hotel

                      Text(
                        'Veg Non veg hotel near gurudwara chok Veg Non veg hotel near gurudwara chok',
                        style: khoteldescrption,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //menu
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Todays Menu',
              style: khotelname,
            ),

            //  NOT Working bro :(
            // Expanded(
            //   child: StreamBuilder(
            //     stream:
            //         FirebaseFirestore.instance.collection('hotels').snapshots(),
            //     builder: (context, AsyncSnapshot snapshot) {
            //       return ListView.builder(itemBuilder: (context, index) {
            //         Map<dynamic, dynamic> map =
            //             snapshot.data!.snapshot.value as dynamic;

            //         List<dynamic> list = [];
            //         list.clear();
            //         list = map.values.toList();
            //         if (snapshot.hasData) {
            //           return Card(
            //             color: kprimarycolor,
            //             child: Padding(
            //               padding: const EdgeInsets.all(20.0),
            //               child: Text(
            //                 list[index]['menu'].toString(),
            //                 style:
            //                     TextStyle(fontSize: 18.0, color: Colors.white),
            //               ),
            //             ),
            //           );
            //         } else {
            //           return CircularProgressIndicator();
            //         }
            //       });
            //     },
            //   ),
            // ),

            // FutureBuilder(builder: (BuildContext, snapshot) {
            //   if (ConnectionState == ConnectionState.waiting) {
            //     return Center(
            //       child: CircularProgressIndicator(),
            //     );
            //   } else {

            //   }
            //   return CircularProgressIndicator();
            // }),

            StreamBuilder<QuerySnapshot>(
              stream: collectionstrem,
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasData) {
                  return Container(
                      height: 500,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: snapshot.data!.docs
                            .map(
                              (menu) => itemName(),
                            )
                            .toList(),
                      ));
                }
                return Text('NO data ');
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, position) {
                  return Card(
                    color: kprimarycolor,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        items[position].toString(),
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
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
