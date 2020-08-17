import 'package:flutter/material.dart';

class FirstList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var plants = [
      {
        "plant": "moneyplant",
        "image": "",
        "price": 200,
      },
      {
        "plant": "moneyplant",
        "image": "",
        "price": 200,
      },
      {
        "plant": "moneyplant",
        "image": "",
        "price": 200,
      },
      {
        "plant": "moneyplant",
        "image": "",
        "price": 200,
      }
    ];
    return ListView.builder(
        itemCount: plants.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 200,
            // height: 100,
          );
        });
  }
}
