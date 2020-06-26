import 'package:flutter/material.dart';
import 'package:gym_app/category-aerobicpage.dart';
import 'package:gym_app/models/training-slide.dart';

class TrainingItem extends StatefulWidget {
  int index;
  TrainingItem(this.index);

  @override
  _TrainingItemState createState() {
    return _TrainingItemState(index);
  }
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

class _TrainingItemState extends State<TrainingItem> {
  int index;
  _TrainingItemState(this.index);

  Widget getListTrainingSubItem(List list) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: screenWidth(context),
            padding: EdgeInsets.only(
              left:20,
            ),
            child: Text(
              'with ' + listTraingSlide[index].nameCoach,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left:20,
              right:20
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                listTraingSlide[index].imgUrl,
                height: 150,
                width: screenWidth(context),
                fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            height: screenHeight(context) - 327,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                for (var item in listTraingSlide[index].listSubItem)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red[900]),
                      width: screenWidth(context),
                      height: 80,
                      margin: EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: screenWidth(context) - 70,
                                  child: Text(
                                    item.title,
                                    style: TextStyle(
                                        fontSize: 20, 
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: screenWidth(context) - 70,
                                  child: Text(
                                    item.excercise,
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      bottom: 10
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Rating',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
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
    );
  }
}
