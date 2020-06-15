import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/category-gympage.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
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
class _HomePageState extends State<HomePage> {

  int current = 0;
  List imgList = [
    'images/banner1.png',
    'images/banner2.jpg',
    'images/banner3.jpg',
    'images/banner4.jpg',
    'images/banner5.jpg',

  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.cyan[800],
          ),
          child: ListView(
            children: <Widget>[
            Column(
              children: <Widget>[
                //Logo
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan[800]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/logov7.png',
                        scale: 2,
                        )
                    ],
                  ),
                ),
                //Search Bar
                Container(
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 10
                  ),
                  margin: EdgeInsets.only(
                    right: 10,
                    left: 10
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan[900],
                    borderRadius: new BorderRadius.all(Radius.circular(10))
                  ),

                  child: TextField(
                    
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search)
                    ),
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                //Advertisement - Image slider
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CarouselSlider(
                        height: 150.0,
                        initialPage: 0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        reverse: false,
                        enableInfiniteScroll: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                        pauseAutoPlayOnTouch: Duration(seconds: 10),
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index) {
                          setState(() {
                            current = index;
                          });
                        },
                        items: imgList.map((imgUrl) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.cyan[900],
                                ),
                                child: Image.asset(
                                  imgUrl,
                                  fit: BoxFit.fill,
                                ),
                              );
                            },
                          );
                        }).toList()
                      )
                    ],
                  ),
                ),
                SizedBox(
                height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: current == index ? Colors.white : Colors.cyan[900],
                      ),
                    );
                  }),
                ),
                //Category
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Category',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
                          
                        ),
                      )
                    ],
                  ),
                ),
                //Category's children
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => 
                            GymCategoryPage()),
                          );
                        },
                        child: Container(
                          
                          width: screenWidth(context, dividedBy: 5),
                          height: screenWidth(context, dividedBy: 5),
                          decoration: BoxDecoration(
                            color: Colors.cyan[900],
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Text(  
                                'Gym',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10, 
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 5),
                        height: screenWidth(context, dividedBy: 5),
                        decoration: BoxDecoration(
                          color: Colors.cyan[900],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Text(
                              'Yoga',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, 
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 5),
                        height: screenWidth(context, dividedBy: 5),
                        decoration: BoxDecoration(
                          color: Colors.cyan[900],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Text(
                              'Street Workout',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, 
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth(context, dividedBy: 5),
                        height: screenWidth(context, dividedBy: 5),
                        decoration: BoxDecoration(
                          color: Colors.cyan[900],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Text(
                              'Aerobic',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10, 
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                height: 10,
                ),
                //Hot Deals
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                        'Hot Deals',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
                          
                        ),
                      )
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                          'More',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                          
                          ),
                      ),
                        )
                      ),
                    ],
                  ),
                ),
                //Hot Deals's Children
                Container(
                  height: 210,
                  padding: EdgeInsets.only(
                    top: 10
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //The Rock Deal
                            Container(
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                            "images/the-rock.png",
                                            width: screenWidth(context, dividedBy: 2.5),
                                            height: 100,
                                            fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(context, dividedBy: 2.5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Icon(Icons.star, color: Colors.cyan[900], size: 12),
                                        Text(
                                          '   (169)',
                                          style: TextStyle(
                                            color: Colors.grey[400]
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(context, dividedBy: 2.5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: RichText(
                                            overflow: TextOverflow.ellipsis,
                                            strutStyle: StrutStyle(fontSize: 20.0),
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17
                                              ),
                                              text: 'How can build your body looks like The Rock in 60 days'),
                                              maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(context, dividedBy: 2.5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'The Rock',
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(context, dividedBy: 2.5),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          '20\$',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10
                                          ),
                                          child: Text(
                                            '200\$',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 15,
                                              decoration: TextDecoration.lineThrough
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //Ho Ngoc Ha deal
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                              "images/yoga-hnh.jpg",
                                              width: screenWidth(context, dividedBy: 2.5),
                                              height: 100,
                                              fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.cyan[900], size: 12),
                                          Text(
                                            '   (58)',
                                            style: TextStyle(
                                              color: Colors.grey[400]
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: RichText(
                                              overflow: TextOverflow.ellipsis,
                                              strutStyle: StrutStyle(fontSize: 20.0),
                                              text: TextSpan(
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17
                                                ),
                                                text: 'Yoga at home with Ho Ngoc Ha to having a nice body\'s shape'),
                                                maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ho Ngoc Ha',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '10\$',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10
                                            ),
                                            child: Text(
                                              '100\$',
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15,
                                                decoration: TextDecoration.lineThrough
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
                            //Son deal
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                              "images/street-son.jpg",
                                              width: screenWidth(context, dividedBy: 2.5),
                                              height: 100,
                                              fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.cyan[900], size: 12),
                                          Text(
                                            '   (74)',
                                            style: TextStyle(
                                              color: Colors.grey[400]
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: RichText(
                                              overflow: TextOverflow.ellipsis,
                                              strutStyle: StrutStyle(fontSize: 20.0),
                                              text: TextSpan(
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17
                                                ),
                                                text: 'Staring Street Workout from zero with Street Workout Lang Hoa'),
                                                maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Son Mong Lep',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '11\$',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10
                                            ),
                                            child: Text(
                                              '110\$',
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15,
                                                decoration: TextDecoration.lineThrough
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
                            //Lan Ngoc deal
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                                right: 20,
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                              "images/aerobic-lanngoc.jpg",
                                              width: screenWidth(context, dividedBy: 2.5),
                                              height: 100,
                                              fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.cyan[900], size: 12),
                                          Text(
                                            '   (63)',
                                            style: TextStyle(
                                              color: Colors.grey[400]
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: RichText(
                                              overflow: TextOverflow.ellipsis,
                                              strutStyle: StrutStyle(fontSize: 20.0),
                                              text: TextSpan(
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17
                                                ),
                                                text: 'Be more sexy with aerobic class of teacher Lan Ngoc'),
                                                maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lan Ngoc',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '10\$',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10
                                            ),
                                            child: Text(
                                              '100\$',
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15,
                                                decoration: TextDecoration.lineThrough
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //Best Seller
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                        'Best Seller',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
                          
                        ),
                      )
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                          'More',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                          
                          ),
                      ),
                        )
                      ),
                    ],
                  ),
                ),
                //Best Seller's children
                Container(
                  height: 210,
                  padding: EdgeInsets.only(
                    top: 10
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //The Rock Deal
                            Container(
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                            "images/gym-thor.jpeg",
                                            width: screenWidth(context, dividedBy: 2.5),
                                            height: 100,
                                            fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(context, dividedBy: 2.5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Icon(Icons.star, color: Colors.yellow, size: 12),
                                        Text(
                                          '   (1280)',
                                          style: TextStyle(
                                            color: Colors.grey[400]
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(context, dividedBy: 2.5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: RichText(
                                            overflow: TextOverflow.ellipsis,
                                            strutStyle: StrutStyle(fontSize: 20.0),
                                            text: TextSpan(
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17
                                              ),
                                              text: 'How can get body looks like Chris Hemsworth'),
                                              maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(context, dividedBy: 2.5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Chris Hemsworth',
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 10
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth(context, dividedBy: 2.5),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          '25\$',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10
                                          ),
                                          child: Text(
                                            '250\$',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 15,
                                              decoration: TextDecoration.lineThrough
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //Ho Ngoc Ha deal
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                              "images/Yoga-scarlett.jpg",
                                              width: screenWidth(context, dividedBy: 2.5),
                                              height: 100,
                                              fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Text(
                                            '   (1202)',
                                            style: TextStyle(
                                              color: Colors.grey[400]
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: RichText(
                                              overflow: TextOverflow.ellipsis,
                                              strutStyle: StrutStyle(fontSize: 20.0),
                                              text: TextSpan(
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17
                                                ),
                                                text: 'Do you want to be a part of The Avenger? Yoga with Black Widow'),
                                                maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Scarlett Johansson',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '20\$',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10
                                            ),
                                            child: Text(
                                              '200\$',
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15,
                                                decoration: TextDecoration.lineThrough
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
                            //Son deal
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                              "images/street-udemy.jpg",
                                              width: screenWidth(context, dividedBy: 2.5),
                                              height: 100,
                                              fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.cyan[900], size: 12),
                                          Text(
                                            '   (1080)',
                                            style: TextStyle(
                                              color: Colors.grey[400]
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: RichText(
                                              overflow: TextOverflow.ellipsis,
                                              strutStyle: StrutStyle(fontSize: 20.0),
                                              text: TextSpan(
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17
                                                ),
                                                text: 'Street workout\'s best tips for beginner by Udemy'),
                                                maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Udemy',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '11\$',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10
                                            ),
                                            child: Text(
                                              '110\$',
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15,
                                                decoration: TextDecoration.lineThrough
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
                            //Lan Ngoc deal
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                                right: 20,
                              ),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                              "images/aerobic-tw.jpg",
                                              width: screenWidth(context, dividedBy: 2.5),
                                              height: 100,
                                              fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.yellow, size: 12),
                                          Icon(Icons.star, color: Colors.cyan[900], size: 12),
                                          Text(
                                            '   (998)',
                                            style: TextStyle(
                                              color: Colors.grey[400]
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: RichText(
                                              overflow: TextOverflow.ellipsis,
                                              strutStyle: StrutStyle(fontSize: 20.0),
                                              text: TextSpan(
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17
                                                ),
                                                text: 'Look what I made you become a sexy girl'),
                                                maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Taylor Swift',
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 10
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth(context, dividedBy: 2.5),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '15\$',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 10
                                            ),
                                            child: Text(
                                              '150\$',
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 15,
                                                decoration: TextDecoration.lineThrough
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ],
          ),
        );
  }
}