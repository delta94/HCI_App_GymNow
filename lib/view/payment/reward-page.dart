import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/models/voucher.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget yesButton = FlatButton(
    child: Text("Yes"),
    color: Colors.red[900],
    onPressed:  () async{
      Navigator.of(context, rootNavigator: true).pop();
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
                    fontSize: 30
                  ),
                ),
                Text(
                  '- 200 points',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 15
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.grey[850],
        )
      )
      ;
    },
  );
  Widget noButton = FlatButton(
    child: Text("No"),
    color: Colors.grey[800],
    onPressed:  () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Cofirmation"),
    content: Text("Are you sure?"),
    backgroundColor: Colors.grey[900],
    shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20
    ),
    contentTextStyle: TextStyle(
      color: Colors.white
    ), 
    actions: [
      yesButton,
      noButton
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class RewardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20
      ),
      decoration: BoxDecoration(
        color: Colors.black
      ),
      child: Column(
            children: <Widget>[
              // <- Reward
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
                      'Reward',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 30
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.white,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[800],
                      blurRadius: 2.0,
                      offset: Offset(0, 4)
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(
                        bottom: 5,
                        left: 20
                        ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Icon(
                        MaterialCommunityIcons.crown,
                        color: Colors.yellow,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10
                      ),
                      child: Text(
                        'Gold',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Calibri',
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        
                        padding: EdgeInsets.only(
                          right: 20
                        ),
                        child: Text(
                          '229 Available Points',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 14
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ) 
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(
                    top: 20
                  ),
                  children: <Widget>[
                    for (var voucher in listVoucher)
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 20
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                left: 20
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  voucher.imgUrl,
                                  width: screenWidth(context)/2 - 20,
                                  height: screenWidth(context)/4,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: screenWidth(context)/4,
                                width: screenWidth(context)/2,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 20,
                                        right: 20
                                      ),
                                      width: screenWidth(context)/2,
                                      child: Text(
                                        voucher.title,
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Calibri',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 5,
                                        left: 20,
                                        right: 20
                                      ),
                                      width: screenWidth(context)/2,
                                      child: Text(
                                        voucher.owner,
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontFamily: 'Calibri',
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                          fontSize: 13
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              voucher.point + 'points',
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontFamily: 'Calibri',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.redAccent[700],
                                                fontSize: 13
                                              ),
                                            ),
                                            new GestureDetector(
                                              onTap: () {
                                                showAlertDialog(context);
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(8),
                                                color: Colors.red[900],
                                                child: Text(
                                                  'Redeem',
                                                  style: TextStyle(
                                                    decoration: TextDecoration.none,
                                                    fontFamily: 'Calibri',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 13
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),
                      ),
                  ],
                )
              )
            ],
          )
    );
  }
}