import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TrainingRoom extends StatefulWidget {
  @override
  _TrainingRoomState createState() => _TrainingRoomState();
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

class _TrainingRoomState extends State<TrainingRoom> {
  bool isMuted = false;
  bool isCam = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      width: screenWidth(context),
      child: Stack(
        children: <Widget>[
          Image.asset(
            'images/selfile.jpg',
            fit: BoxFit.fill,
            height: screenHeight(context),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:100,
              right: 100
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: screenHeight(context) - 70
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new GestureDetector(
                    onTap: (){
                      setState(() {
                        isMuted = !isMuted;
                      });
                    },
                    child: isMuted?Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        FontAwesome.microphone_slash,
                        color: Colors.white,
                        size: 35,
                      ),
                    ):Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        FontAwesome.microphone_slash,
                        color: Colors.black,
                        size: 35,
                      ),
                    )
                  ),
                  new GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Ionicons.md_exit,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: (){
                      setState(() {
                        isCam = !isCam;
                      });
                      
                    },
                    child: isCam?Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        FontAwesome.video_camera,
                        color: Colors.black,
                        size: 35,
                      ),
                    ):Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        FontAwesome.video_camera,
                        color: Colors.white,
                        size: 35,
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
          if(isCam)
          Container(
            child: Image.asset(
              'images/cus.jpg',
              height: 150,
              width: 100,
              fit: BoxFit.fill,
            ),
          )
        ],
      )
    );
  }
}