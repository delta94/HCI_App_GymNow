import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/profile-marcfitt-page.dart';
import 'package:gym_app/profile-paige-page.dart';
import 'package:gym_app/searchpage.dart';

import 'category-aerobicpage.dart';
import 'category-gympage.dart';
import 'category-yogapage.dart';
import 'categoy-streetpage.dart';

class HomePageV2 extends StatefulWidget {
  @override
  _HomePageV2State createState() => _HomePageV2State();
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
  Widget okButton = FlatButton(
    child: Text("Ok"),
    color: Colors.red[900],
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


Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}
class _HomePageV2State extends State<HomePageV2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900]
        // gradient: LinearGradient(
        //             colors: [
        //             Colors.black,
        //             Colors.grey[600],
        //             Colors.black
        //             ],
        //             begin: FractionalOffset.topCenter,
        //             end: FractionalOffset.bottomCenter
        // )
      ),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              //Logo & Search Bar
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 5
                ),
                decoration: BoxDecoration(
                  color: Colors.red[900]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/logov7.png',
                        width: screenWidth(context, dividedBy: 3),
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SearchPage()),
                              );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red[900],
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            FontAwesome.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //Wallet & Points
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      top:10,
                      bottom:10
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                    width: screenWidth(context, dividedBy: 2) - 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            border: Border.all(
                              color: Colors.blue[700],
                              width: 2,
                            ),
                            color: Colors.blue[900]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Entypo.wallet,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(' '),
                        Text(
                          '11,000 \$',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        Icon(
                          MaterialIcons.navigate_next,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top:10,
                      bottom:10
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                    width: screenWidth(context, dividedBy: 2) - 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              MaterialCommunityIcons.crown,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                        Text(' '),
                        Text(
                          '229 Points',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        Icon(
                          MaterialIcons.navigate_next,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
              //Category - Which type of personal trainer do you want?
              Container(
                margin: EdgeInsets.only(
                  top: 7
                ),
                color: Colors.black,
                padding: EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  // top: 10,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Which type of personal trainer do you want?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 20,
                        left: 10,
                        right: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new GestureDetector(  
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => GymCategoryPage()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: screenWidth(context, dividedBy: 7),
                                  height: screenWidth(context, dividedBy: 7),
                                  decoration: BoxDecoration(
                                    color: Colors.red[900],
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: Icon(
                                        MaterialCommunityIcons.dumbbell,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 7
                                  ),
                                  child: Text(
                                        'Gym',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                )
                              ],
                            ),
                          ),
                          new GestureDetector(  
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => YogaCategoryPage()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: screenWidth(context, dividedBy: 7),
                                  height: screenWidth(context, dividedBy: 7),
                                  decoration: BoxDecoration(
                                    color: Colors.red[900],
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: Icon(
                                        FontAwesome.heartbeat,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 7
                                  ),
                                  child: Text(
                                        'Yoga',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                )
                              ],
                            ),
                          ),
                          new GestureDetector(  
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StreetCategoryPage()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: screenWidth(context, dividedBy: 7),
                                  height: screenWidth(context, dividedBy: 7),
                                  decoration: BoxDecoration(
                                    color: Colors.red[900],
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: Icon(
                                        FontAwesome.bolt,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 7
                                  ),
                                  child: Text(
                                        'Workout',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                )
                              ],
                            ),
                          ),
                          new GestureDetector(  
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AerobicCategoryPage()),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: screenWidth(context, dividedBy: 7),
                                  height: screenWidth(context, dividedBy: 7),
                                  decoration: BoxDecoration(
                                    color: Colors.red[900],
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: Icon(
                                        FontAwesome.music,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 7
                                  ),
                                  child: Text(
                                        'Aerobic',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                )
                              ],
                            ),
                          ),
                  ],
                ),
              ),
                  ],
                ),
              ),
              //Hot PT
              //Hot's Items
              Container(
                width: screenWidth(context),
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                        top: 3
                      ),
                decoration: BoxDecoration(
                        color: Colors.black
                      ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            left: 8,
                            bottom: 5
                          ),
                          child: Text(
                            'Hot coach',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                              right: 20
                            ),
                            child: Text(
                              'See full coach',
                              style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        )
                      ],
                    ),
                    //Item 1
                    new GestureDetector(
                      onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MarcProfilePage()),
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
                                        'images/marc-fitt.jpg',
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
                                              'Marc Fitt',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                              top: 5
                                            ),
                                            width: 150,
                                            child: Text(
                                              'Gym coach',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10
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
                                                fontWeight: FontWeight.bold
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
                                              '1m83',
                                              style: TextStyle(
                                                color: Colors.white,
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
                                              MaterialCommunityIcons.weight_kilogram,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 10
                                              ),
                                              child: Text(
                                                '93 Kg',
                                                style: TextStyle(
                                                color: Colors.white,
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
                                                'Califonia',
                                                style: TextStyle(
                                                color: Colors.white,
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
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 5
                                                    ),
                                                    child: Text(
                                                      '(11448)',
                                                      style: TextStyle(
                                                        color: Colors.white
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
                                            '25\$/month',
                                            style: TextStyle(
                                              color: Colors.red[900],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
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
                    //Item 2
                    new GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaigeProfilePage()),
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
                                        'images/paige-hathaway.jpg',
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
                                              'Paige Hathaway',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                              top: 5
                                            ),
                                            width: 150,
                                            child: Text(
                                              'Gym coach',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10
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
                                                fontWeight: FontWeight.bold
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
                                              '1m67',
                                              style: TextStyle(
                                                color: Colors.white,
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
                                              Ionicons.ios_body,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 10
                                              ),
                                              child: Text(
                                                '96-60-99',
                                                style: TextStyle(
                                                color: Colors.white,
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
                                                'New York',
                                                style: TextStyle(
                                                color: Colors.white,
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
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    FontAwesome.star,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    FontAwesome.star_half_empty,
                                                    color: Colors.yellow,
                                                    size: 13,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 5
                                                    ),
                                                    child: Text(
                                                      '(10520)',
                                                      style: TextStyle(
                                                        color: Colors.white
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
                                            '15\$/month',
                                            style: TextStyle(
                                              color: Colors.red[900],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
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
                    //Item 3
                    Container(
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
                                      'images/sergi-constance.jpg',
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
                                            'Sergi Constance',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            top: 5
                                          ),
                                          width: 150,
                                          child: Text(
                                            'Gym coach',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
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
                                              fontWeight: FontWeight.bold
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
                                            '1m80',
                                            style: TextStyle(
                                              color: Colors.white,
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
                                            MaterialCommunityIcons.weight_kilogram,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10
                                            ),
                                            child: Text(
                                              '90 Kg',
                                              style: TextStyle(
                                              color: Colors.white,
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
                                              'Texas',
                                              style: TextStyle(
                                              color: Colors.white,
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
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  child: Text(
                                                    '(9753)',
                                                    style: TextStyle(
                                                      color: Colors.white
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
                                          '20\$/month',
                                          style: TextStyle(
                                            color: Colors.red[900],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
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
                    //Item 4
                    Container(
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
                                      'images/Trang.jpg',
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
                                            'Trang Le',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            top: 5
                                          ),
                                          width: 150,
                                          child: Text(
                                            'Yoga coach',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10
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
                                              fontWeight: FontWeight.bold
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
                                            '1m65',
                                            style: TextStyle(
                                              color: Colors.white,
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
                                            Ionicons.ios_body,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10
                                            ),
                                            child: Text(
                                              '98-60-99',
                                              style: TextStyle(
                                              color: Colors.white,
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
                                              'Ho Chi Minh',
                                              style: TextStyle(
                                              color: Colors.white,
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
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Icon(
                                                  FontAwesome.star,
                                                  color: Colors.yellow,
                                                  size: 13,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  child: Text(
                                                    '(7979)',
                                                    style: TextStyle(
                                                      color: Colors.white
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
                                          '10\$/month',
                                          style: TextStyle(
                                            color: Colors.red[900],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
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
                    Text(
                      'You reach the bottom.',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}