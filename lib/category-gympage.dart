import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/models/coach.dart';
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
    onPressed:  () {
      Navigator.of(context, rootNavigator: true).pop()
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
    content: Text("Do you really want to rent this coach?"),
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
class GymCategoryPage extends StatelessWidget {
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
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Column(
        children: <Widget>[
          // <- Gym
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
                  'Gym',
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
          // All type
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'All type',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 10
                ),
                decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Male',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 10
                ),
                decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Female',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10
          ),
          //Items Line 1
          for(var coach in listCoach)
            if(coach.type == 'Gym coach')
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => coach.widget),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(5)
                  ),
                  margin: EdgeInsets.only(
                    left: 8,
                    right: 8,
                    bottom: 10
                  ),
                  padding: EdgeInsets.only(
                    left: 12,
                    top: 15,
                    right: 12,
                    bottom: 15
                  ),

                  child: Column(
                    children: <Widget>[
                      //Image & Rent
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 5
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50))
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  coach.imgUrl,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 10
                                  ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 150,
                                      child: Text(
                                        coach.name,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          fontFamily: 'Calibri',
                                          decoration: TextDecoration.none
                                        ),

                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 5
                                      ),
                                      width: 150,
                                      child: Text(
                                        coach.type,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Calibri',
                                          decoration: TextDecoration.none
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    )
                                  ],
                                ),
                              )
                                ],
                              ),
                            ),
                            new GestureDetector(
                              onTap: () {
                                showAlertDialog(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red[900],
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'Rent',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Calibri',
                                          decoration: TextDecoration.none
                                        ),
                                    ),
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      // Information  
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Entypo.ruler,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 10
                                      ),
                                      child: Text(
                                        coach.height,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Calibri',
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        coach.iconDetail,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 10
                                        ),
                                        child: Text(
                                          coach.detail,
                                          style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Calibri',
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Entypo.location_pin,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 10
                                        ),
                                        child: Text(
                                          coach.location,
                                          style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Calibri',
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        MaterialIcons.rate_review,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 10
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            for(var star in coach.star)
                                              Icon(
                                                star,
                                                color: Colors.yellow,
                                                size: 13,
                                              ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 5
                                              ),
                                              child: Text(
                                                coach.rating,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Calibri',
                                                  decoration: TextDecoration.none,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Entypo.price_tag,
                                    color: Colors.red[900],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left:5
                                    ),
                                    child: Text(
                                      coach.price,
                                      style: TextStyle(
                                        color: Colors.red[900],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: 'Calibri',
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'You reach the bottom.',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Calibri',
                  fontSize: 9
                ),
              ),
              SizedBox(
                height: 5,
              )
        ],
      ),
        ],
      )
      
    );
  }
}