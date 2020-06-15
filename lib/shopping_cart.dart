import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Image.asset('images/logov7.png', scale: 2),
          ],
        ),
      ),
      backgroundColor: Colors.cyan[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
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
              color: Colors.cyan[900],
              boxShadow: [
                BoxShadow(
                  color: Colors.cyan[900].withOpacity(0.5),
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
