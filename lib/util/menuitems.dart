import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:menuapp/styles.dart';

Widget itemName(QueryDocumentSnapshot doc) {
  return Card(
    color: kprimarycolor,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        doc['item_name'],
        style: const TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    ),
  );
}
