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

class WalletActivityScreen extends StatelessWidget {
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Ionicons.md_arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Wallet Activity",
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
              width: screenWidth(context),
              margin: EdgeInsets.only( left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "26/6/2020",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 20),
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
            Container(
              width: screenWidth(context),
              margin: EdgeInsets.only( left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "20/6/2020",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 20),
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
              width: screenWidth(context),
              margin: EdgeInsets.only( left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "1/6/2020",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 20),
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
          ],
        ));
  }
}
