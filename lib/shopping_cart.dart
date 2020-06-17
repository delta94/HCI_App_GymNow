import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.black
        gradient: LinearGradient(
                    colors: [
                    Colors.black,
                    Colors.grey[600],
                    Colors.black
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  // color: Colors.black,
                  

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/logov7.png',
                      scale: 2,
                    )
                  ],
                ),
              ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Cart (0 course)',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontFamily: 'Calibri',
                )),
          ),
          SizedBox(height: 50),
          CircleAvatar(
            radius: 80,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.shopping_cart,
              size: 80,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'You haven\'t had any \n \t \t courses in cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'Calibri',
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 70),
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.red[900],
              boxShadow: [
                BoxShadow(
                  color: Colors.red[900].withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]
            ),
            child: Text(
              'Shopping Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontFamily: 'Calibri',
              ),
              textAlign: TextAlign.center,
            ),
            

          ),
        ],
      ),
    );
  }
}
