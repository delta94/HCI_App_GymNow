import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'models/slot.dart';

class RentDetailedBottomSheet extends StatefulWidget {
  @override
  _RentDetailedBottomSheetState createState() => _RentDetailedBottomSheetState();
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}

List listDay = [
  '','MON','TUE','WED','THU','FRI','SAT','SUN'
];

class _RentDetailedBottomSheetState extends State<RentDetailedBottomSheet> {
  @override
  Widget build(BuildContext context) {
      return Container(
        child: new GestureDetector(
          onTap: () {
            showModalBottomSheet(context: context, builder: (BuildContext bc){
              return Container(
      padding: EdgeInsets.only(
        left: 10,
        right :10,
        top: 10
      ),
      color: Colors.grey[850],
      height: screenHeight(context)/1.5,
      child: ListView(
        children: <Widget>[
          Text(
            'Choose days:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          Table(
            border: TableBorder.all(
              color: Colors.white
            ),
            children: [
              TableRow(
                children: [
                  for(var day in listDay)
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.red[900],
                    child: Text(
                      day,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.red[900],
                    child: Text(
                      'Slot 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                  for(var slot in listSlot)
                  slot.isBooked?Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.black,
                      child: Icon(
                        FontAwesome.close,
                        color: Colors.red,
                        size: 10,
                      )
                    ):new GestureDetector(
                      onTap: (){
                        setState(() {
                          slot.isChose = !slot.isChose;
                        });
                      },
                      child:(slot.isChose)?Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.black,
                        child: Icon(
                          FontAwesome.check,
                          color: Colors.green,
                          size: 10,
                        )
                      ):Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.black,
                        child: Text(
                          '',
                          style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),
                        )
                      )
                    )
                ]
              )
            ],
          ) 
        ],
      )
    );
            });
          },
        ),
    );
  }
}