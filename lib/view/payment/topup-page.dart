import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/Draff/homepage.dart';

class TopUp extends StatefulWidget {
  @override
  _TopUpState createState() => _TopUpState();
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget yesButton = FlatButton(
    child: Text("Yes"),
    color: Colors.red[900],
    onPressed: () async {
      Navigator.of(context, rootNavigator: true).pop();
      Navigator.pop(context);
      await showDialog(
          context: context,
          child: new AlertDialog(
            content: Container(
              height: 160,
              child: Column(
                children: <Widget>[
                  Icon(
                    FontAwesome.check_circle_o,
                    color: Colors.green,
                    size: 100,
                  ),
                  Text(
                    'Success',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.grey[850],
          ));
    },
  );
  Widget noButton = FlatButton(
    child: Text("No"),
    color: Colors.grey[800],
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Cofirmation"),
    content: Text("Are you sure?"),
    backgroundColor: Colors.grey[900],
    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
    titleTextStyle: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    contentTextStyle: TextStyle(color: Colors.white),
    actions: [yesButton, noButton],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
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
      resizeToAvoidBottomPadding: false,
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
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10
            ),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/vietcom.jpg',
                      height: 40,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: screenWidth(context) - 150,
                        child: Text(
                          'Vietcombank',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth(context) - 150,
                        child: Text(
                          'No fees',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    // color: Colors.red,
                    child: Icon(
                      FontAwesome.check,
                      color: Colors.green,
                    ),
                  ) 
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight(context) -323  ,
          ),

          new GestureDetector(
            onTap: () {
              showAlertDialog(context);
            },
            child: Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(10)
              ),
              width: screenWidth(context),
              child: Text(
                'Top up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      )
    ),
    );
    
  }
}