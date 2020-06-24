import 'package:flutter/material.dart';
import 'models/training-slide.dart';
import 'training-slide/training-item.dart';

class TestApp extends StatefulWidget {
  @override
  _TestState createState() {
    return _TestState();
  }
}

class _TestState extends State<TestApp> {
  int currentIndex = 0;

  // PageController _pageController = PageController(initialPage: 0);

  // @override
  // void initState() {
  //   super.initState();
  //     _pageController.animateToPage(
  //       currentIndex,
  //       duration: Duration(milliseconds: 300),
  //       curve: Curves.easeIn,
  //     );
  //   ;
  // }


  // @override
  // void dispose() {
  //   super.dispose();
  //   _pageController.dispose();
  // }
  List<T> getListWidget<T> (List list, Function handler) {
    List<T> result = [];
    for( var i = 0; i < list.length ; i++) {
      result.add(handler(i));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: <Widget>[
                new GestureDetector(
                  onTap: () => {Navigator.pop(context)},
                  child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                ),
                
                Text(
                  "Training",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
              child: Stack(
            children: <Widget>[
              PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listTraingSlide.length,
                itemBuilder: (context, index) => TrainingItem(index),
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: getListWidget(listTraingSlide, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      width: currentIndex == index ? 50 : 25,
                      height: 15,
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  currentIndex == index ? Colors.red[900] : Colors.grey[850]
                      ),
                    );
                  })
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
