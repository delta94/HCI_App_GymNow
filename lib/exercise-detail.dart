import 'package:flutter/material.dart';
import 'package:gym_app/category-aerobicpage.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ExerciseDetail extends StatefulWidget {
  @override
  State<ExerciseDetail> createState() {
    // TODO: implement createState
    return _ExerciseDetailState();
  }
 
}

class _ExerciseDetailState extends State<ExerciseDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.black
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset(
                  'images/ex1.gif',
                  fit: BoxFit.cover,
                  height: 150,
                  width: screenWidth(context),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.red[900],
                        shape: BoxShape.circle
                      ),
                      child: Icon(
                        FontAwesome.video_camera,
                        color: Colors.white
                      ),
                    ),
                  )
                ],
              )
            ],
          ),

          Container(
            height: 300,
            padding: EdgeInsets.all(15),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Text(
                  "Exercise 1",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: 10
                  ),
                  child: Text(
                    "- Start lying down on your back with your arms out to the sides, palms up. Then lift your legs and bend your knees to 90 degrees, so that your thighs are vertical and your shins are horizontal. Maintain this angle at the hips and knees during the exercise.\n\n- From here, twist your legs side to side, whilst keeping your shoulders and arms flat on the floor. Gravity will help you lower your legs as you twist them out to one side, but you will have to use your core and oblique muscles to control the lowering phase and then contract them to lift the legs back up to center.\n\n- Don’t lower your legs all the way to the floor on each side as this will take the tension out of the exercise and turn it into more of a stretch instead.",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 150,
            width: screenWidth(context)- 50,
            color: Colors.white24,
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red[900]
              ),
              height: 20,
              width: 20,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      MaterialCommunityIcons.camera_plus,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text(
                      'Post your video',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 10
                      ),
                    )
                  ],
                )
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Coach give point: ?',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                  Navigator.pop(context);
                },
                  child: Text(
                    '< Back',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.red[900],
                      fontSize: 20
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