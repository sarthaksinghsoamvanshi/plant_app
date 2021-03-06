import 'package:flutter/material.dart';
import 'package:plant_App/listview.dart';
import 'package:plant_App/listview2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var colg = Colors.amber;
    var colw = Colors.blue;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colg,
        elevation: 0,
        leading: FlatButton(
            child: SvgPicture.asset("icons/menu.svg"), onPressed: null),
      ),
       bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: colg,
            ),
            Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  padding: EdgeInsets.only(bottom: 20),
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Container(
                    // color: colw,
                    height: 30,
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Text("Hii Sarthak!",
                            style: TextStyle(color: colw, fontSize: 30)),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 1), color: colg, blurRadius: 15)
                      ],
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle:
                                      TextStyle(color: colg, fontSize: 20),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: colg,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.amber,
              child: Row(
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                        color: colg, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "More",
                      style: TextStyle(color: colw),
                    ),
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.33,
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: FirstList(size: size.height * 0.3),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              // padding: EdgeInsets.symmetric(horizontal:10),
              child: Row(
                children: [
                  Text("Featured Plants",
                      style: TextStyle(
                          color: colg,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "More",
                      style: TextStyle(color: colw),
                    ),
                    color: colg,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * 0.33,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SecondList(size: size.height * 0.3),
            ),
          ],
        ),
      ),
    );
  }
}
