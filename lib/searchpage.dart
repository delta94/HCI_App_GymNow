import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20
        ),
        child: ListView(
          children: <Widget>[
            new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Ionicons.md_arrow_round_back,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter a search term'
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
    ),
          ],
        ),
      ),
 
    );
  }
}