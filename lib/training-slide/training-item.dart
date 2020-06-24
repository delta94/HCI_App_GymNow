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

class _TrainingItemState extends State<TrainingItem> {
  int index;
  _TrainingItemState(this.index);

  Widget getListTrainingSubItem(List list) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            listTraingSlide[index].imgUrl,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 400,
            child: ListView(
              children: <Widget>[
                for (var item in listTraingSlide[index].listSubItem)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red[900]),
                      width: screenWidth(context),
                      height: 80,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                item.title,
                                style: TextStyle(
                                    fontSize: 20, 
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                    ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                item.excercise,
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              )
                            ],
                          )
                        ],
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
