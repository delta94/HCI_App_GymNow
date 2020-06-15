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
class YogaCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20
      ),
      decoration: BoxDecoration(
        color: Colors.cyan[800]
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
                  'Yoga',
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
                  color: Colors.cyan,
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
                  color: Colors.cyan[900],
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
                  color: Colors.cyan[900],
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
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                                "images/lazar-angelov.jpg",
                                width: screenWidth(context, dividedBy: 2.3),
                                height: 100,
                                fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.cyan[900], size: 12),
                            Text(
                              '   (119)',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                strutStyle: StrutStyle(fontSize: 20.0),
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                  ),
                                  text: 'Lazar Angelov'),
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1m80 - 90kg',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '20\$',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri'
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Calibri'
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                                "images/marc.jpg",
                                width: screenWidth(context, dividedBy: 2.3),
                                height: 100,
                                fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.cyan[900], size: 12),
                            Text(
                              '   (69)',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                strutStyle: StrutStyle(fontSize: 20.0),
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'Calibri'
                                  ),
                                  text: 'Marc Fitt'),
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1m83 - 93kg',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '20\$',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri'
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Calibri'
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),        
              ],
            ),
          ),
          //Items Line 2
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                                "images/cellena-fox.jpg",
                                width: screenWidth(context, dividedBy: 2.3),
                                height: 100,
                                fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.cyan[900], size: 12),
                            Text(
                              '   (1449)',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                strutStyle: StrutStyle(fontSize: 20.0),
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                  ),
                                  text: 'Cellena Fox'),
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1m68 - 99-65-98',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '20\$',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri'
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Calibri'
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                                "images/the-rock.png",
                                width: screenWidth(context, dividedBy: 2.3),
                                height: 100,
                                fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.cyan[900], size: 12),
                            Text(
                              '   (169)',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                strutStyle: StrutStyle(fontSize: 20.0),
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'Calibri'
                                  ),
                                  text: 'The Rock'),
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1m80 - 100kg',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '20\$',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri'
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Calibri'
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),        
              ],
            ),
          ),
          //Items line 3
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                                "images/Jennifer-Nicole-Lee.jpg",
                                width: screenWidth(context, dividedBy: 2.3),
                                height: 100,
                                fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.cyan[900], size: 12),
                            Text(
                              '   (1149)',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                strutStyle: StrutStyle(fontSize: 20.0),
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                  ),
                                  text: 'Jennifer Nicole Lee'),
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1m77 - 91-65-98',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '20\$',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri'
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Calibri'
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                                "images/sergi-constance.jpg",
                                width: screenWidth(context, dividedBy: 2.3),
                                height: 100,
                                fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.cyan[900], size: 12),
                            Text(
                              '   (269)',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                strutStyle: StrutStyle(fontSize: 20.0),
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'Calibri'
                                  ),
                                  text: 'Sergi Constance'),
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1m88 - 90kg',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '20\$',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri'
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Calibri'
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),        
              ],
            ),
          ),
          //Items line 4
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                                "images/eva_andressa.jpg",
                                width: screenWidth(context, dividedBy: 2.3),
                                height: 100,
                                fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.cyan[900], size: 12),
                            Text(
                              '   (1149)',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                strutStyle: StrutStyle(fontSize: 20.0),
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                  ),
                                  text: 'Eva Andressa'),
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1m63 - 91-65-98',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '20\$',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri'
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Calibri'
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                                "images/jen-selter.jpg",
                                width: screenWidth(context, dividedBy: 2.3),
                                height: 100,
                                fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.yellow, size: 12),
                            Icon(Icons.star, color: Colors.cyan[900], size: 12),
                            Text(
                              '   (269)',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 13,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                strutStyle: StrutStyle(fontSize: 20.0),
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'Calibri'
                                  ),
                                  text: 'Jen Selter'),
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '1m68 - 95-63-99',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 10,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Calibri'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 2.3),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '20\$',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontFamily: 'Calibri'
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Text(
                                '200\$',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Calibri'
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),        
              ],
            ),
          )
        ],
      ),
        ],
      )
      
    );
  }
}