import 'package:flutter/material.dart';
import 'package:menuapp/pages/hotel_page.dart';
import 'package:menuapp/styles.dart';

class Hoteltile extends StatelessWidget {
  const Hoteltile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HotelPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
        child: Container(
          padding: EdgeInsets.all(12),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kprimarycolor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //hotel logo
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('images/food.png')),
              //hotel name
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                child: Column(
                  children: [
                    Text(
                      'Hotel name',
                      style: khotelname,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Veg Non veg hotel near gurudwara chok ',
                      style: khoteldescrption,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
