import 'package:flutter/material.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}
class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20
      ),
      decoration: BoxDecoration(
        // color: Colors.cyan[800]
        gradient: LinearGradient(
                    colors: [
                    Colors.black,
                    Colors.grey[600],
                    Colors.black
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter
        )
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Flexible(
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  strutStyle:
                      StrutStyle(fontSize: 20.0),
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17),
                      text:
                          'Please Sign in/Sign up for using full options of Gym Now'),
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: screenWidth(context, dividedBy: 2.3),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10
                    ),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth(context, dividedBy: 2.3),
                  decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10
                    ),
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}