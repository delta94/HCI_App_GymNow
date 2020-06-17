import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20
                    ),
                    child: Icon(
                      Ionicons.md_arrow_round_back,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}