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
          //Items Line 1
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(5)
            ),
            margin: EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 10,
              top: 10
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
                                  'Gym coach',
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
                      Container(
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
                                    'Califonia',
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
                                '25\$/month',
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
          //Items Line 2
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
                                  'Gym coach',
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
                      Container(
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
                                    'New York',
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
                                '15\$/month',
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
          //Items line 3
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(5)
            ),
            margin: EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 10,
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
                                  'Gym coach',
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
                      Container(
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
                                    'Texas',
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
                                '20\$/month',
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
          //Items line 4
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
                            'images/cellena-fox.jpg',
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
                                  'Cellena Fox',
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
                                  'Gym coach',
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
                      Container(
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
                                  '1m70',
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
                                  Ionicons.ios_body,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10
                                  ),
                                  child: Text(
                                    '100-60-105',
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
                                    'Hue Ohio',
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
                                          '(4520)',
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
                                '15\$/month',
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
          //Items line 5
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(5)
            ),
            margin: EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 10,
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
                            'images/the-rock.png',
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
                                  'The Rock',
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
                                  'Gym coach',
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
                      Container(
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
                                  '1m95',
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
                                  MaterialCommunityIcons.weight_kilogram,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10
                                  ),
                                  child: Text(
                                    '118 Kg',
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
                                    'Califonia',
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
                                          '(9588)',
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
                                '25\$/month',
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
          
        ],
      ),
        ],
      )
      
    );
  }
}