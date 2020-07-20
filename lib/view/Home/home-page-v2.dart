import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/view/Home/Category/category-fullpage.dart';
import 'package:gym_app/view/Home/Deal/chooseday-page.dart';
import 'package:gym_app/models/category.dart';
import 'package:gym_app/models/coach.dart';
import 'package:gym_app/models/slot.dart';
import 'package:gym_app/view/payment/payment_screen.dart';
import 'package:gym_app/Draff/rentDetailedBottomSheet.dart';
import 'package:gym_app/view/payment/payment_screenV2.dart';
import 'package:gym_app/view/payment/reward-page.dart';
import 'package:gym_app/searchpage.dart';

class HomePageV2 extends StatefulWidget {
  @override
  _HomePageV2State createState() => _HomePageV2State();
}

List listDay = [
  '','MON','TUE','WED','THU','FRI','SAT','SUN'
];


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
    _rentDetailedBottomSheet(context) {
  showModalBottomSheet(context: context, builder: (BuildContext bc) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right :10,
        top: 10
      ),
      color: Colors.grey[850],
      height: screenHeight(context)/1.5,
      child: ListView(
        children: <Widget>[
          Text(
            'Choose days:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          Table(
            border: TableBorder.all(
              color: Colors.white
            ),
            children: [
              TableRow(
                children: [
                  for(var day in listDay)
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.red[900],
                    child: Text(
                      day,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.red[900],
                    child: Text(
                      'Slot 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                  for(var slot in listSlot)
                  slot.isBooked?Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.black,
                      child: Icon(
                        FontAwesome.close,
                        color: Colors.red,
                        size: 10,
                      )
                    ):new GestureDetector(
                      onTap: (){
                        setState(() {
                          slot.isChose = !slot.isChose;
                        });
                      },
                      child:Container(
                        padding: EdgeInsets.all(8),
                        color:(slot.isChose)? Colors.black:Colors.white,
                        child: Icon(
                          FontAwesome.check,
                          color: Colors.green,
                          size: 10,
                        )
                      )
                    )
                ]
              )
            ],
          ) 
        ],
      )
    );
  });
}
    
    
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
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentScreenV2()),
                      );
                    },
                    child: Container(
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
                  ),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RewardPage()),
                      );
                    },
                    child: Container(
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
                          for(var listCate in listCategory)
                            new GestureDetector(  
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => listCate.widget),
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
                                        listCate.icon,
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
                                        listCate.name,
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
                          child: new GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FullCategoryPage()),
                              );
                            },
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
                          ),
                        )
                      ],
                    ),
                    //Item 
                    for(var coach in listCoach)
                      if(coach.isHot == true)
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
                                              coach.type,
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ChooseDay()),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red[900],
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                              'Deal',
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
                                              coach.height,
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
                                            coach.price,
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
                    Text(
                      'You reach the bottom.',
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 9
                      ),
                    ),
                    SizedBox(
                      height: 5,
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