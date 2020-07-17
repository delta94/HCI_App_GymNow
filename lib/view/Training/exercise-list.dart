import 'package:flutter/material.dart';
import 'package:gym_app/view/Training/exercise-detail.dart';
import 'package:gym_app/models/exercise.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../../training-slide/training-item.dart';

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}

class ExerciseList extends StatefulWidget {
  @override
  _ExerciseListState createState() => _ExerciseListState();
}

class _ExerciseListState extends State<ExerciseList> {
  int currentIndex = 0;

  List<T> getListWidget<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: ListView(
        children: <Widget>[
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
                  'Excercises (7)',
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
          Container(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            child: Column(
              children: <Widget>[
                for(var ex in listExercise)
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        ex.imgUrl,
                        width: screenWidth(context)/5,
                        height: screenWidth(context)/5,
                        fit: BoxFit.fill,
                      ),
                      Expanded(
                        child: Container(
                          height: screenWidth(context)/5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10
                                ),
                                width: screenWidth(context),
                                child: Text(
                                  ex.name,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Calibri',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10
                                ),
                                width: screenWidth(context),
                                child: Text(
                                  ex.detail,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Calibri',
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: 15
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ExerciseDetail()),
                          );
                        },
                        child: Container(
                          color: Colors.red[900],
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Detail',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Calibri',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
