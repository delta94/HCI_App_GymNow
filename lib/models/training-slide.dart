import 'package:flutter/material.dart';

class TrainingSlide {
  String nameCoach;
  String imgUrl;
  List<TrainingSubItem> listSubItem;
  
    TrainingSlide({
      @required this.nameCoach,
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
    nameCoach: 'The Rock',
    imgUrl: 'images/therockcover.jpg', 
    listSubItem: [
      TrainingSubItem(
        title: "Day 1", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 2", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 3", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 4", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 5", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 6", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 7", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 8", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 9", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 10", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 11", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 12", 
        excercise: "Rest"
      ),
      
      TrainingSubItem(
        title: "Day 13", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 14", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 15", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 16", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 17", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 18", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 19", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 20", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 21", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 22", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 23", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 24", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 25", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 26", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 27", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 28", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 29", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 30", 
        excercise: "15 Exercises"
      ),
    ]
  ),
  TrainingSlide(
    nameCoach: 'Marc Fitt',
    imgUrl: 'images/marcfittcover.jpg', 
    listSubItem: [
      TrainingSubItem(
        title: "Day 1", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 2", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 3", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 4", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 5", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 6", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 7", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 8", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 9", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 10", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 11", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 12", 
        excercise: "Rest"
      ),
      
      TrainingSubItem(
        title: "Day 13", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 14", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 15", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 16", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 17", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 18", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 19", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 20", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 21", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 22", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 23", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 24", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 25", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 26", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 27", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 28", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 29", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 30", 
        excercise: "15 Exercises"
      ),
    ]
  ),
  TrainingSlide(
    nameCoach: 'Paige Hathaway',
    imgUrl: 'images/paigecover.jpg', 
    listSubItem: [
      TrainingSubItem(
        title: "Day 1", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 2", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 3", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 4", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 5", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 6", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 7", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 8", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 9", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 10", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 11", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 12", 
        excercise: "Rest"
      ),
      
      TrainingSubItem(
        title: "Day 13", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 14", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 15", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 16", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 17", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 18", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 19", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 20", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 21", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 22", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 23", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 24", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 25", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 26", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 27", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 28", 
        excercise: "Rest"
      ),

      TrainingSubItem(
        title: "Day 29", 
        excercise: "15 Exercises"
      ),

      TrainingSubItem(
        title: "Day 30", 
        excercise: "15 Exercises"
      ),
    ]
  )
];
