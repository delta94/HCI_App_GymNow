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

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              // Profile
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
                      'Profile',
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
              //Background
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 15
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    child: Image.asset(
                      'images/marc-fitt-cover.jpg',
                      height: 150,
                      width: screenWidth(context) - 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              //Divider
              Padding(
                padding: EdgeInsets.only(
                  left:20,
                  right: 20
                ),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              //Avatar
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            )
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/marc-fitt.jpg',
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                    Text(
                      'Marc Fitt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Calibri',
                        decoration: TextDecoration.none
                      ),
                    ),
                    ],
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              left: 10
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: RichText(
                                    overflow: TextOverflow.ellipsis,
                                    strutStyle:
                                        StrutStyle(fontSize: 20.0),
                                    text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic
                                            ),
                                        text:
                                            '\"Live fit or die fat\"'),
                                    maxLines: 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                                  color: Colors.red[900],
                                  borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Rent',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Calibri',
                                  decoration: TextDecoration.none
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  left:5
                                ),
                                child: Text(
                                  '20\$/month',
                                  style: TextStyle(
                                    color: Colors.red[900],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontFamily: 'Calibri',
                                    decoration: TextDecoration.none
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
              //Divider
              Padding(
                padding: EdgeInsets.only(
                  left:20,
                  right: 20
                ),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              //Information
              Padding(
                padding: EdgeInsets.only(
                  left: 20
                ),
                child: Row(
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
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Calibri',
                                    decoration: TextDecoration.none,
                                    fontSize: 15
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10
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
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Calibri',
                                    decoration: TextDecoration.none,
                                    fontSize: 15
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10
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
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Calibri',
                                    decoration: TextDecoration.none,
                                    fontSize: 15
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  AntDesign.facebook_square,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10
                                  ),
                                  child: Text(
                                    'http://facebook.com/marcfittgym',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Calibri',
                                    decoration: TextDecoration.none,
                                    fontSize: 15
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  AntDesign.instagram,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10
                                  ),
                                  child: Text(
                                    'MarcFittIsMe',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Calibri',
                                    decoration: TextDecoration.none,
                                    fontSize: 15
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Ionicons.ios_people,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10
                                  ),
                                  child: Text(
                                    'See more customers that trained with Marc Fitt',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Calibri',
                                    decoration: TextDecoration.none,
                                    fontSize: 15
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
              //Images
              Padding(
                padding: EdgeInsets.only(
                  left:20,
                  right: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 15
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                        ),
                        child: Image.asset(
                          'images/student1.jpg',
                          height: screenWidth(context)/3.4,
                          width: screenWidth(context)/3.4,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15
                      ),
                      child: ClipRRect(
                        child: Image.asset(
                          'images/student2.jpg',
                          height: screenWidth(context)/3.4,
                          width: screenWidth(context)/3.4,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                        ),
                        child: Image.asset(
                          'images/student3.jpg',
                          height: screenWidth(context)/3.4,
                          width: screenWidth(context)/3.4,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Divider
              Padding(
                padding: EdgeInsets.only(
                  left:20,
                  right: 20
                ),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              //Description
              Padding(
                padding: EdgeInsets.only(
                  left: 20
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Calibri',
                          decoration: TextDecoration.none,
                          fontSize: 25
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        strutStyle:
                            StrutStyle(fontSize: 20.0),
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontStyle: FontStyle.italic
                                ),
                            text:
                                'This is description\nThis is description\nThis is description\nThis is description\nThis is description'),
                        maxLines: 10,
                      ),
                    ),
                  ],
                ),
              ),
              //Divider
              Padding(
                padding: EdgeInsets.only(
                  left:20,
                  right: 20
                ),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              //Rating and review
              Padding(
                padding: EdgeInsets.only(
                  left: 20
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Ratings and reviews',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Calibri',
                          decoration: TextDecoration.none,
                          fontSize: 25
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //Rating
              Text(
                '5.0',
                style: TextStyle(
                          color: Colors.red[900],
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Calibri',
                          decoration: TextDecoration.none,
                          fontSize: 40
                        ),
              ),
              Container(
                width: screenWidth(context),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
              ),
              Text(
                '(11.448)',
                style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Calibri',
                          decoration: TextDecoration.none,
                          fontSize: 11
                        ),
              ),
              //Review 1
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 10
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Column(
                  children: <Widget>[
                    //Avatar & name
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'images/the-rock.png',
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10
                          ),
                          child: Text(
                            'The Rock',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Calibri',
                              decoration: TextDecoration.none,
                              fontSize: 11
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Rating
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    '6/16/20',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Calibri',
                                      decoration: TextDecoration.none,
                                      fontSize: 11
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    //Review
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            strutStyle:
                                StrutStyle(fontSize: 20.0),
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic
                                    ),
                                text:
                                    'This is comment'),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Review 2
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 10
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Column(
                  children: <Widget>[
                    //Avatar & name
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'images/eva-andressa.jpg',
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10
                          ),
                          child: Text(
                            'Eva Andressa',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Calibri',
                              decoration: TextDecoration.none,
                              fontSize: 11
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Rating
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    '6/16/20',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Calibri',
                                      decoration: TextDecoration.none,
                                      fontSize: 11
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    //Review
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            strutStyle:
                                StrutStyle(fontSize: 20.0),
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic
                                    ),
                                text:
                                    'This is comment'),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Review 3
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 20
                ),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 10
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Column(
                  children: <Widget>[
                    //Avatar & name
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'images/aerobic-tw.jpg',
                              height: 40,
                              width: 40,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10
                          ),
                          child: Text(
                            'Taylor Swift',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Calibri',
                              decoration: TextDecoration.none,
                              fontSize: 11
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Rating
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    '6/16/20',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Calibri',
                                      decoration: TextDecoration.none,
                                      fontSize: 11
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    //Review
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            strutStyle:
                                StrutStyle(fontSize: 20.0),
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic
                                    ),
                                text:
                                    'This is comment'),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //This is end.
              Text(
                'This is end.',
                style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Calibri',
                              decoration: TextDecoration.none,
                              fontSize: 8
                            ),
              )
            ],
          )
        ],
      ),
    );
  }
}