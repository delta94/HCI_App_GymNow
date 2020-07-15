import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/models/slot.dart';

class ChooseDay extends StatefulWidget {
  @override
  _ChooseDayState createState() => _ChooseDayState();
}

List listDay = [
  '','MON','TUE','WED','THU','FRI','SAT','SUN'
];

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}


class _ChooseDayState extends State<ChooseDay> {

  int total = 0;

  int calculateTotalChosenSlot() {
    int total = 0;
    for (var item in listRow) {
      int count = item.totalChosenSlot();
      total += count;
    }

    return total;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right :10,
      ),
      color: Colors.grey[850],
      height: screenHeight(context)/1.5,
      child: ListView(
        children: <Widget>[
          Text(
            'Choose days:',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: 'Calibri',
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 30
            ),
          ),
          Text(
                '*Days in week per month',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.black,
                      width: 35,
                      height: 30,
                    ),
                    Text(
                      ' You can choose',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 15
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.black,
                      width: 35,
                      height: 30,
                      child: Icon(
                          FontAwesome.close,
                          color: Colors.red,
                          size: 15,
                        )
                    ),
                    Text(
                      ' Booked',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 15
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.black,
                      width: 35,
                      height: 30,
                      child: Icon(
                          FontAwesome.check,
                          color: Colors.green,
                          size: 15,
                        )
                    ),
                    Text(
                      '  You chose',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 15
                      ),
                    )
                  ],
                )
              ],
            ),
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
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 10
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                ],
              ),
              for(var row in listRow)
              TableRow(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.red[900],
                    child: Text(
                      row.title,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Calibri',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 11
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                  for(var slot in row.listSlotRow)
                  slot.isBooked?Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.black,
                      child: Icon(
                        FontAwesome.close,
                        color: Colors.red,
                        size: 27,
                      )
                    ):new GestureDetector(
                      onTap: (){
                        setState(() {
                          slot.isChose = !slot.isChose;
                          total = calculateTotalChosenSlot();
                        });
                      },
                      child:Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.black,
                        child:(slot.isChose)? Icon(
                          FontAwesome.check,
                          color: Colors.green,
                          size: 27,
                        ):Text(
                          total.toString(),
                          style: TextStyle(
                            fontSize: 22
                          ),
                        )
                      )
                    )
                ]
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Choices:',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
              Text(
                '5',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Price/Unit:',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
              Text(
                '25\$',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total:',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
              Text(
                '125\$',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900],
                  fontSize: 25
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10
          ),
          Container(
            color: Colors.red[900],
            padding: EdgeInsets.all(10),
            child: Text(
              'RENT',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Calibri',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 5
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.all(10),
            child: Text(
              'CANCLE',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Calibri',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      )
    );
  }
}