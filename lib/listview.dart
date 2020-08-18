import 'package:flutter/material.dart';
import 'package:plant_App/detailpage.dart';

class FirstList extends StatelessWidget {
  final size;

  const FirstList({this.size});
  @override
  Widget build(BuildContext context) {
    var plants = [
      {
        "plant": "Moneyplant",
        "image": "images/b.png",
        "price": 105,
        "country": "russia"
      },
      {
        "plant": "Honeyplant",
        "image": "images/c.png",
        "price": 196,
        "country": "India"
      },
      {
        "plant": "Ring plant",
        "image": "images/d.png",
        "price": 115,
        "country": "japan"
      },
      {
        "plant": "Star plant",
        "image": "images/e.png",
        "price": 120,
        "country": "china"
      },
    ];
    return ListView.builder(
        itemCount: plants.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    country: plants[index]["country"],
                    image: plants[index]["image"],
                    price: plants[index]["price"],
                    plant: plants[index]["plant"],
                  ),
                ),
              )
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: 200,
              child: Column(
                children: [
                  Container(
                    height: size * 0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage(
                              plants[index]["image"],
                            ),
                            fit: BoxFit.fitWidth)),
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
            ),
          );
        });
  }
}
