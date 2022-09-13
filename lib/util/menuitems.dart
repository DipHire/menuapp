import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:menuapp/styles.dart';

Widget itemName() {
  return Card(
    color: kprimarycolor,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'item',
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    ),
  );
}
