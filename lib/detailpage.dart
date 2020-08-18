import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final image;
  final country;
  final plant;
  final price;

  const DetailPage({this.image, this.country, this.plant, this.price});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // bottomNavigationBar:
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 600,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                              onPressed: () => {Navigator.pop(context)},
                            ),
                            // Spacer(),
                            Container(
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(0, 10),
                                        color: Colors.grey)
                                  ],
                                  borderRadius: BorderRadius.circular(6)),
                              // child: SvgPicture.asset("");
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(0, 10),
                                        color: Colors.grey)
                                  ],
                                  borderRadius: BorderRadius.circular(6)),
                              // child: SvgPicture.asset("");
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(0, 10),
                                        color: Colors.grey)
                                  ],
                                  borderRadius: BorderRadius.circular(6)),
                              // child: SvgPicture.asset("");
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(0, 10),
                                        color: Colors.grey)
                                  ],
                                  borderRadius: BorderRadius.circular(6)),
                              // child: SvgPicture.asset("");
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        offset: Offset(0, 10),
                                        color: Colors.grey)
                                  ],
                                  borderRadius: BorderRadius.circular(6)),
                              // child: SvgPicture.asset("");
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, bottom: 20),
                      height: 600,
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(70),
                            topLeft: Radius.circular(70)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 20,
                            color: Colors.green,
                          ),
                        ],
                        color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "$plant\n".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 27)),
                            ],
                          ),
                          TextSpan(
                              text: "$country".toUpperCase(),
                              style:
                                  TextStyle(color: Colors.green, fontSize: 20)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$$price".toUpperCase(),
                      style: TextStyle(color: Colors.green, fontSize: 22),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
