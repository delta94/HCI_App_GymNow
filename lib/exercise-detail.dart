import 'package:flutter/material.dart';
import 'package:gym_app/category-aerobicpage.dart';

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
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.black
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Image.asset(
                  'images/84_image_rule_1_protein_5_3lbs__2_2kg__image_1587722736.jpg',
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
                      padding: EdgeInsets.all(15),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              )
            ],
          ),

          Container(
            height: 250,
            padding: EdgeInsets.all(15),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Text(
                  "Exercise 1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),
                ),

                Text(
                  "-         Lorem vo va vo van",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "-         Lorem vo va vo van",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
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
                color: Colors.red
              ),
              height: 20,
              width: 20,
              child: Center(
                child: Text(
                  "Icon",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            )
          )

        ],
      ),
    );
  }

}