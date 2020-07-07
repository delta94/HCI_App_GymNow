import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/category-aerobicpage.dart';
import 'package:gym_app/category-gympage.dart';
import 'package:gym_app/category-yogapage.dart';
import 'package:gym_app/categoy-streetpage.dart';

class Category {
  String name;
  IconData icon;
  Widget widget;

  Category({
    @required this.name, 
    @required this.icon,
    @required this.widget,
  });
} 

final listCategory = [
  Category(
    name: 'Gym',
    icon: MaterialCommunityIcons.dumbbell,
    widget: GymCategoryPage()
  ),
  Category(
    name: 'Yoga',
    icon: FontAwesome.heartbeat,
    widget: YogaCategoryPage()
  ),
  Category(
    name: 'Workout',
    icon: FontAwesome.bolt,
    widget: StreetCategoryPage()
  ),
  Category(
    name: 'Aerobic',
    icon: FontAwesome.music,
    widget: AerobicCategoryPage()
  )
];

