import '../../training-slide/training-item.dart';
import '../../models/training-slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TrainingPage extends StatefulWidget {
  
  @override
  _TrainingPageState createState() {
    
    return _TrainingPageState();
  }

}

class _TrainingPageState extends State<TrainingPage> {

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.white,
            Colors.black
          ],

          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
        )
      ),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              //Navigator back 
              Row(
                children: <Widget>[
                  new GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        
                        Icons.arrow_back,
                        color: Colors.white,
                        ),
                    ),
                  ),

                  Text(
                    "Training",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'calibri',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                    ),
                  )
                ],
              ),

              // Slider
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.donut_small,
                          ),

                          Icon(
                            Icons.donut_small,
                          ),

                          Icon(
                            Icons.donut_small,
                          ),
                        ],
                      ),
                    ),

                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => TrainingItem(index),
                      itemCount: listTraingSlide.length,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}


