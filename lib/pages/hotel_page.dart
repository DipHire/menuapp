import 'package:flutter/material.dart';
import 'package:menuapp/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

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
