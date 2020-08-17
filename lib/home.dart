import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var colg = Colors.green;
    var colw = Colors.white;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colg,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.menu, color: colw, size: 25), onPressed: null),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Icon(Icons.home,color: colg,),Icon(Icons.favorite,color: colg,),Icon(Icons.person,color: colg,)],
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
                  Text("Recommended",
                      style: TextStyle(
                          color: colg,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.amber,
              child: Row(
                children: [
                  Text("Featured Plants",
                      style: TextStyle(
                          color: colg,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
