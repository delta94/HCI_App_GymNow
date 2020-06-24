import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Coach{
  String imgUrl;
  String name;
  String type;
  String height;
  IconData iconDetail;
  String detail;
  String location;
  String rating;
  List<IconData> star;
  String price;

  Coach({
    @required this.imgUrl, 
    @required this.name,
    @required this.type,
    @required this.height,
    @required this.iconDetail,
    @required this.detail,
    @required this.location,
    @required this.rating,
    @required this.star,
    @required this.price,
  });
}

final listCoach = [
  Coach(
    imgUrl: 'images/marc-fitt.jpg',
    name: 'Marc Fitt',
    type: 'Gym coach',
    height: '1m83',
    iconDetail: MaterialCommunityIcons.weight_kilogram,
    detail: '93kg',
    location: 'Califonia',
    rating: '(11448)',
    star: [
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
    ],
    price: '25\$/month',
  ),
  Coach(
    imgUrl: 'images/paige-hathaway.jpg',
    name: 'Paige Hathaway',
    type: 'Gym coach',
    height: '1m67',
    iconDetail: Ionicons.ios_body,
    detail: '96-60-99',
    location: 'New York',
    rating: '(10520)',
    star: [
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star_half_empty,
    ],
    price: '15\$/month',
  ),
  Coach(
    imgUrl: 'images/sergi-constance.jpg',
    name: 'Sergi Constance',
    type: 'Gym coach',
    height: '1m80',
    iconDetail: MaterialCommunityIcons.weight_kilogram,
    detail: '90kg',
    location: 'Texas',
    rating: '(9753)',
    star: [
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
    ],
    price: '20\$/month',
  ),
  Coach(
    imgUrl: 'images/Trang.jpg',
    name: 'Trang Le',
    type: 'Yoga coach',
    height: '1m65',
    iconDetail: Ionicons.ios_body,
    detail: '98-60-99',
    location: 'Ho Chi Minh',
    rating: '(7979)',
    star: [
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star,
      FontAwesome.star_half_empty,
    ],
    price: '10\$/month',
  ),
];