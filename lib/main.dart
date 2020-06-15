import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: GymApp(),
      );
  }
}
class GymApp extends StatefulWidget {
  GymAppState createState() => GymAppState();
}

 

class GymAppState extends State {
  final List<Widget> listWidget = [
    HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),

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
              backgroundColor: Colors.cyan[900]
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.dumbbell),
              title: Text('Trainning'),
              backgroundColor: Colors.cyan[900]
            ),
            BottomNavigationBarItem(
              icon: Icon(AntDesign.shoppingcart),
              title: Text('Cart'),
              backgroundColor: Colors.cyan[900]
            ),
            BottomNavigationBarItem(
              icon: Icon(Octicons.report),
              title: Text('Report'),
              backgroundColor: Colors.cyan[900]
            ),
            BottomNavigationBarItem(
              icon: Icon(Entypo.menu),
              title: Text('Me'),
              backgroundColor: Colors.cyan[900]
            ),
          ],
        ),
      ),
    );
  }
}