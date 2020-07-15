import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/models/slot.dart';
import 'package:gym_app/myvoucher-page.dart';

class ChooseDay extends StatefulWidget {
  @override
  _ChooseDayState createState() => _ChooseDayState();
}

List listDay = [
  '','MON','TUE','WED','THU','FRI','SAT','SUN'
];

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget yesButton = FlatButton(
    child: Text("Yes"),
    color: Colors.red[900],
    onPressed:  () async{
      Navigator.of(context, rootNavigator: true).pop();
      Navigator.pop(context);
      await showDialog(
        context: context,
        child: new AlertDialog(
          content: Container(
            height: 160,
            child: Column(
              children: <Widget>[
                Icon(
                  FontAwesome.check_circle_o,
                  color: Colors.green,
                  size: 100,
                ),
                Text(
                  'Success',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 30
                  ),
                ),
                Text(
                  '+ 20 points',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 15
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.grey[850],
        )
      )
      ;
    },
  );
  Widget noButton = FlatButton(
    child: Text("No"),
    color: Colors.grey[800],
    onPressed:  () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Cofirmation"),
    content: Text("Do you really want to rent this coach?"),
    backgroundColor: Colors.grey[900],
    shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20
    ),
    contentTextStyle: TextStyle(
      color: Colors.white
    ), 
    actions: [
      yesButton,
      noButton
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
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
          Row(
            children: <Widget>[
              Text(
                'How many month do you want to rent?',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
            ],
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
                          '',
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
                total.toString(),
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
                (total*25).toString() + '\$',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Do you have any voucher?',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyVoucher()),
                  );
                },
                child: Container(
                color: Colors.red[900],
                padding: EdgeInsets.all(10),
                child: Text(
                  'Use voucher',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Calibri',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15
                  ),
                ),
            ),
              ),
            ],
          ),
          SizedBox(
            height: 10
          ),
          new GestureDetector(
            onTap: (){
              showAlertDialog(context);
            },
            child: Container(
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
          ),
          SizedBox(
            height: 5
          ),
          new GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(10),
              child: Text(
                'CANCEL',
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
          ),
          SizedBox(
            height: 5
          ),
        ],
      )
    );
  }
}