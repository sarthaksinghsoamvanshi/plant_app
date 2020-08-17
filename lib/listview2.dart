import 'package:flutter/material.dart';

class SecondList extends StatelessWidget {
  final size;

  const SecondList({this.size});
  @override
  Widget build(BuildContext context) {
    var plants = [
      {
        "plant": "Moneyplant",
        // "image": "images/money.",
        "price": 100,
        "country": "India"
      },
      {
        "plant": "Moneyplant",
        // "image": "images/money.dart",
        "price": 100,
        "country": "India"
      },
      {
        "plant": "Moneyplant",
        // "image": "images/money.dart",
        "price": 100,
        "country": "India"
      },
      {
        "plant": "Moneyplant",
        // "image": "images/money.dart",
        "price": 100,
        "country": "India"
      },
    ];
    return ListView.builder(
        itemCount: plants.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.blue,
            ),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 280,
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: size * 0.7,
                  width: 180,
                  // child: Image.asset("images/money.png"),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    // width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 5,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: "${plants[index]["plant"]}\n"
                                          .toUpperCase(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17)),
                                ],
                              ),
                              TextSpan(
                                  text: "${plants[index]["country"]}"
                                      .toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 14)),
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$${plants[index]["price"]}".toUpperCase(),
                          style: TextStyle(color: Colors.green, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
