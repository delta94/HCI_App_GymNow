import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TopUp extends StatefulWidget {
  @override
  _TopUpState createState() => _TopUpState();
}

Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
}
double screenHeight(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).height / dividedBy;
}
double screenWidth(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).width / dividedBy;
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20
      ),
      decoration: BoxDecoration(
        color: Colors.black
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  child: Icon(
                    Ionicons.md_arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'Top up',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: screenWidth(context),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.only(
                        left: 10,
                        right:10
                      ),
                      width: constraints.maxWidth,
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Input money',
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.black,
                                style: BorderStyle.solid)),
                          fillColor: Colors.grey[850],
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 5,
                                color: Colors.white30,
                                style: BorderStyle.solid))),
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 20),
                    ));
                  },
                ),
              ),
            ],
          ),
          Container(
            width: screenWidth(context),
            padding: EdgeInsets.only(
              left: 10
            ),
            child: Text(
              'From',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Calibri',
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 20
              ),
            ),
          ),
        ],
      )
    ),
    );
    
  }
}