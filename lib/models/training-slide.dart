import 'package:flutter/material.dart';

class TrainingSlide {
  String imgUrl;
  List<TrainingSubItem> listSubItem;
  
    TrainingSlide({
      @required this.imgUrl, 
      @required this.listSubItem,
      });
}

class TrainingSubItem {
  String title;
  String excercise;
  TrainingSubItem({
    @required this.title,
    @required this.excercise
  });
}

final listTraingSlide = [
  TrainingSlide(
    imgUrl: 'images/banner1.png', 
    listSubItem: [
      TrainingSubItem(
        title: "Day 1",
        excercise: "Exercise 1",
      ),

      TrainingSubItem(
        title: "Day 2", 
        excercise: "Exercise 2 "
      ),

      TrainingSubItem(
        title: "Day 3", 
        excercise: "Exercise 3"
      ),

      TrainingSubItem(
        title: "Day 4", 
        excercise: "Exercise 4"
      ),

      TrainingSubItem(
        title: "Day 5", 
        excercise: "Exercise 5"
      )
    ]
  ),
  TrainingSlide(
    imgUrl: 'images/2020-Olympia-Logo-POS.png', 
    listSubItem: [
      TrainingSubItem(
        title: "Day 1", 
        excercise: "Exercise 1"
      ),

      TrainingSubItem(
        title: "Day 2", 
        excercise: "Exercise 2 "
      ),

      TrainingSubItem(
        title: "Day 3", 
        excercise: "Exercise 3"
      ),

      TrainingSubItem(
        title: "Day 4", 
        excercise: "Exercise 4"
      ),

      TrainingSubItem(
        title: "Day 5", 
        excercise: "Exercise 5"
      )
    ]
  ),
  TrainingSlide(
    imgUrl: 'images/banner2.jpg', 
    listSubItem: [
      TrainingSubItem(
        title: "Day 1", 
        excercise: "Exercise 1"
      ),

      TrainingSubItem(
        title: "Day 2", 
        excercise: "Exercise 2 "
      ),

      TrainingSubItem(
        title: "Day 3", 
        excercise: "Exercise 3"
      ),

      TrainingSubItem(
        title: "Day 4", 
        excercise: "Exercise 4"
      ),

      TrainingSubItem(
        title: "Day 5", 
        excercise: "Exercise 5"
      )
    ]
  )
];
