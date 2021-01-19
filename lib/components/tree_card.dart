import 'package:flutter/material.dart';

class TreeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Container(
        height: 500,
        width: 200,
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.only(top: 60.0, bottom: 20.0),
                height: 500,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xFFD8E6CF),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)))),
            Positioned(
              top: -20,
              left: 0,
              child: Container(
                height: 300,
                width: 250,
                child: Image.asset(
                  "assets/images/tree-2.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250.0, left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 15,
                    width: 60,
                    color: Colors.white,
                    child: Center(
                        child: Text("Indoor",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey))),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Cactus Deco",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  Text(
                    "\$80",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 5,
              right: 30,
              child: Container(
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.shopping_cart,
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
