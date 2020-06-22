import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/home-page-v2.dart';
import 'package:gym_app/homepage.dart';
import 'package:gym_app/mepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GymApp(),
      );
  }
}
class GymApp extends StatefulWidget {
  GymAppState createState() => GymAppState();
}

final Colors mainColor = Colors.cyan[900] as Colors; 

class GymAppState extends State {
  final List<Widget> listWidget = [
    HomePageV2(),
    HomePage(),
    Container(),
    MePage(),

  ];

  int _currentIndex= 0;
  void indexLast(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Arial'),
      home: Scaffold(
        body: listWidget.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: indexLast,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              // backgroundColor: Colors.cyan[900]
              backgroundColor: Colors.red[900],
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.dumbbell),
              title: Text('Trainning'),
              // backgroundColor: Colors.cyan[900]
              backgroundColor: Colors.red[900]
            ),
            BottomNavigationBarItem(
              icon: Icon(Entypo.wallet),
              title: Text('Payment'),
              // backgroundColor: Colors.cyan[900]
              backgroundColor: Colors.red[900]
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.account),
              title: Text('Account'),
              // backgroundColor: Colors.cyan[900]
              backgroundColor: Colors.red[900]
            ),
          ],
        ),
      ),
    );
  }
}