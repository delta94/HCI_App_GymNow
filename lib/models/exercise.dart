import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercise {
  String imgUrl;
  String name;
  String detail;

  Exercise({
    @required this.imgUrl,
    @required this.name,
    @required this.detail,
  });
}

final listExercise = [
  Exercise(
    imgUrl: 'images/ex1.gif',
    name: 'BENT LEG TWIST', 
    detail: 'x 6'
  ),

  Exercise(
    imgUrl: 'images/ex2.gif',
    name: 'REVERSE CRUNCHES', 
    detail: 'x 8'
  ),

  Exercise(
    imgUrl: 'images/ex3.gif',
    name: 'V CRUNCH', 
    detail: 'x 10'
  ),

  Exercise(
    imgUrl: 'images/ex4.gif',
    name: 'FLUTTER KICKS', 
    detail: '00:40'
  ),

  Exercise(
    imgUrl: 'images/ex5.gif',
    name: 'HEEL TOUCH', 
    detail: 'x 30'
  ),

  Exercise(
    imgUrl: 'images/ex6.gif',
    name: 'MOUNTAIN CLIMBER', 
    detail: '00:30'
  ),

  Exercise(
    imgUrl: 'images/ex7.gif',
    name: 'X MAN CRUNCH', 
    detail: 'x 15'
  ),
];
