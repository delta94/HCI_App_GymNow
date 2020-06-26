import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 20,
                bottom: 5
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Payment",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Calibri',
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.red[900],
              height: 135,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "Balance",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 27),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "11,000\$",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Icon(
                              MaterialCommunityIcons.crown,
                              color: Colors.yellow,
                            ),
                          ),
                          Text(
                            "229 Point",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    
                    margin: EdgeInsets.only(right: 5),
                    height: 90,
                    width: screenWidth(context, dividedBy: 2) - 13,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            border: Border.all(width: 1, color: Colors.blue[700]),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Icon(
                            Entypo.wallet,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Top up",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Calibri',
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    height: 90,
                    width: screenWidth(context, dividedBy: 2) - 13,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Icon(
                            MaterialCommunityIcons.crown,
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          "Rewards",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Calibri',
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth(context),
              margin: EdgeInsets.only( left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Recent activity",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              padding:
                  EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1
                  )
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom:5),
                          child: Text(
                            "Payment",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text(
                            "To the rock",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      "-20\$",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Calibri',
                          fontWeight: FontWeight.normal,
                          color: Colors.red,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            ///////
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding:
                  EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1
                  )
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom:5),
                          child: Text(
                            "Top up",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Using debit card",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      "+90\$",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Calibri',
                          fontWeight: FontWeight.normal,
                          color: Colors.green,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            ///////
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding:
                  EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1
                  )
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom:5),
                          child: Text(
                            "Payment",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text(
                            "To the rock",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      "-20\$",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Calibri',
                          fontWeight: FontWeight.normal,
                          color: Colors.red,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            ///////
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding:
                  EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1
                  )
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom:5),
                          child: Text(
                            "Payment",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          child: Text(
                            "To the rock",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      "-20\$",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Calibri',
                          fontWeight: FontWeight.normal,
                          color: Colors.red,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
