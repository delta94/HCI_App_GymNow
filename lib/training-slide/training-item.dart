import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gym_app/category-aerobicpage.dart';
import 'package:gym_app/exercise-list.dart';
import 'package:gym_app/models/training-slide.dart';
import 'package:gym_app/trainingroom-page.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:nice_button/nice_button.dart';
class TrainingItem extends StatefulWidget {
  int index;
  TrainingItem(this.index);

  @override
  _TrainingItemState createState() {
    return _TrainingItemState(index);
  }
}

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget yesButton = FlatButton(
    child: Text("No"),
    color: Colors.red[900],
    onPressed:  () {
      Navigator.of(context, rootNavigator: true).pop()
      ;
    },
  );
  Widget noButton = FlatButton(
    child: Text("Yes"),
    color: Colors.grey[800],
    onPressed:  () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Cofirmation"),
    content: Text("Do you really want to end this course?"),
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

class _TrainingItemState extends State<TrainingItem> {
  int index;
  _TrainingItemState(this.index);

  Widget getListTrainingSubItem(List list) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: screenWidth(context),
            padding: EdgeInsets.only(
              left:20,
              right: 20
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'with ' + listTraingSlide[index].nameCoach,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ],
            ) 
            
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20, 
              right: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '*will be started in 30 minutes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.italic
                  ),
                ),

                new GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrainingRoom()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Join',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left:20,
              right:20
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                listTraingSlide[index].imgUrl,
                height: 150,
                width: screenWidth(context),
                fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            height: screenHeight(context) - 420,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                for (var item in listTraingSlide[index].listSubItem)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExerciseList()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red[900]),
                        width: screenWidth(context),
                        height: 80,
                        margin: EdgeInsets.only(bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: screenWidth(context) - 70,
                                    child: Text(
                                      item.title,
                                      style: TextStyle(
                                          fontSize: 20, 
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: screenWidth(context) - 70,
                                    child: Text(
                                      item.excercise,
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Rating',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20
                      ),
                      child: SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {
                            },
                            starCount: 5,
                            
                            size: 40.0,
                            isReadOnly:false,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing:0.0
                      )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left:20,
                      right:20
                    ),
                    child: Card(
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
                        ),
                      )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        NiceButton(
                          width: 150,
                          background: Colors.red[900],
                          radius: 40,
                          padding: const EdgeInsets.all(10),
                          text: "Submit",
                          elevation: 20,
                          fontSize: 15,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new GestureDetector(
                  onTap: (){
                    showAlertDialog(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 20
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red[900],
                    ),
                    padding: EdgeInsets.all(5),
                    
                    child: Text(
                      'End course',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
