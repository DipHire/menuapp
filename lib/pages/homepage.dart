import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/pages/hotel_page.dart';
import 'package:menuapp/styles.dart';
import 'package:menuapp/util/hotel_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          //Whats todays menu??
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "What’s todays menu?",
              style: GoogleFonts.poppins(textStyle: kheadline),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          //Input search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIconColor: kfontcolor,
                prefixIcon: Icon(Icons.search),
                hintText: 'Find hotels..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kprimarycolor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kprimarycolor),
                ),
              ),
            ),
          ),
          //view more
          Padding(
            padding: const EdgeInsets.fromLTRB(26, 15, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Restarunts near you',
                  style: kh3headline,
                ),
                GestureDetector(
                  onTap: () {
                    HotelPage();
                  },
                  child: Text(
                    'view more',
                    style: khoteldescrption,
                  ),
                ),
              ],
            ),
          ),
          //Vertical mess card
          const SizedBox(
            height: 20.0,
          ),
          StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('hotel').snapshots(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasData) {
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Hoteltile(),
                      Hoteltile(),
                      Hoteltile(),
                    ],
                  );
                }
                return Text('NO data here');
              }),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Hoteltile(),
                Hoteltile(),
                Hoteltile(),
              ],
            ),
          ),
          //vertical mess card
          Container(
            height: 35.0,
            color: Colors.transparent,
          )
        ],
      ),
    );
  }
}
