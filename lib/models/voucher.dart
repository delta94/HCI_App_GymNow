import 'package:flutter/material.dart';

class Voucher {
  String imgUrl;
  String title;
  String owner;
  String point;

  Voucher({
    @required this.imgUrl, 
    @required this.title,
    @required this.owner,
    @required this.point,
  });
}

final listVoucher = [
  Voucher(
    imgUrl: 'images/Voucher1.jpg', 
    title: 'Free voucher 5\$ for Gym', 
    owner: 'Gym Now', 
    point: '200'
  ),

  Voucher(
    imgUrl: 'images/Voucher1.jpg', 
    title: 'Free voucher 5\$ for Yoga', 
    owner: 'Gym Now', 
    point: '200'
  ),

  Voucher(
    imgUrl: 'images/Voucher1.jpg', 
    title: 'Free voucher 5\$ for Workout', 
    owner: 'Gym Now', 
    point: '200'
  ),

  Voucher(
    imgUrl: 'images/Voucher1.jpg',
    title: 'Free voucher 5\$ for Aerobic', 
    owner: 'Gym Now', 
    point: '200'
  ),

  Voucher(
    imgUrl: 'images/Voucher2.jpg', 
    title: 'Free voucher 10\$ for Gym', 
    owner: 'Gym Now', 
    point: '350'
  ),

  Voucher(
    imgUrl: 'images/Voucher2.jpg', 
    title: 'Free voucher 10\$ for Yoga', 
    owner: 'Gym Now', 
    point: '350'
  ),

  Voucher(
    imgUrl: 'images/Voucher2.jpg', 
    title: 'Free voucher 10\$ for Workout', 
    owner: 'Gym Now', 
    point: '350'
  ),

  Voucher(
    imgUrl: 'images/Voucher2.jpg', 
    title: 'Free voucher 10\$ for Aerobic', 
    owner: 'Gym Now', 
    point: '350'
  ),
];