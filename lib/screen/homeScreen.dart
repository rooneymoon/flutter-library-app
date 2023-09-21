import 'package:application_project/screen/bookinfo1.dart';
import 'package:application_project/screen/bookinfo2.dart';
import 'package:application_project/screen/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Widget buildSearchbox() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5),
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 80,
    width: 600,
    decoration: BoxDecoration(
      color: Colors.transparent,
    ),
    child: Center(
      child: Material(
        elevation: 3.0,
        color: Color(0xffadcec3),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
              prefix: null,
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xff1c6360),
              ),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Color(0xfffff6ea).withOpacity(0.5),
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
        ),
      ),
    ),
  );
}

Widget buildRecommend(color, Image, String Title1, String title2, tap) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    margin: EdgeInsets.all(5.0),
    height: 150,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: (color),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 5),
        Container(
          width: 100.0,
          height: 100.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xfffff6ea),
          ),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(Image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xfffff6ea),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(Title1,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0xff1c6360))),
        Text(title2,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff1c6360))),
        SizedBox(height: 5),
        Container(
          width: 40,
          child: RaisedButton(
              color: Color(0xfffff6ea),
              textColor: Color(0xff1c6360),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Icon(Icons.navigate_next),
              onPressed: tap),
        ),
      ],
    ),
  );
}

Widget buildBooks(color, Image, String Title1, String title2, tap) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    margin: EdgeInsets.all(5.0),
    height: 180,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: (color),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 5),
        Container(
          width: 100.0,
          height: 100.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xfffff6ea),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(Image), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
        SizedBox(height: 10),
        Text(Title1,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0xff1c6360))),
        Text(title2,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff1c6360))),
        SizedBox(height: 5),
        Container(
          width: 40,
          child: RaisedButton(
              color: Color(0xfffff6ea),
              textColor: Color(0xff1c6360),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Icon(Icons.navigate_next),
              onPressed: tap),
        ),
        SizedBox(height: 2),
      ],
    ),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List categories = ['All', 'Classics', 'Romance', 'History', 'Scifi'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xff1c6360),
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Color(0xff1c6360),
            ),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => cart()),
              );
            },
          ),
        ],
        backgroundColor: Color(0xfffff6ea),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfffff6ea),
        ),
        padding: const EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            buildSearchbox(),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: Color(0xfffff6ea),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 20),
                              Text(
                                "Recommend",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1c6360)),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 230.0,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                SizedBox(width: 10),
                                buildRecommend(
                                  Color(0xffadcec3),
                                  "images/book_0.png",
                                  "Little Blue",
                                  "No.1",
                                  () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => BookInfoOne()),
                                    );
                                  },
                                ),
                                buildRecommend(
                                  Color(0xffffc9c5),
                                  "images/book_pink.png",
                                  "Pink Planet",
                                  "No.8",
                                  () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => BookInfoTwo()),
                                    );
                                  },
                                ),
                                buildRecommend(
                                  Color(0xffffd6b0),
                                  "images/pink_book_air.png",
                                  "Sleep Time",
                                  "No.4",
                                  () {},
                                ),
                                buildRecommend(
                                  Color(0xffffc9c5),
                                  "images/pink_book_0.png",
                                  "Sadness",
                                  "No.1",
                                  () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 20),
                              Text(
                                "Books",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1c6360),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            height: 30,
                            alignment: Alignment.topLeft,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categories.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(
                                    left: 15,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: index == selectedIndex
                                        ? Color(0xff1c6360)
                                        : Color(0xff48857e),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    categories[index],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xfffff6ea)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 230.0,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                SizedBox(width: 10),
                                buildBooks(
                                  Color(0xffffd6b0),
                                  "Images/book_brige.png",
                                  "Book 1",
                                  "No.2",
                                  () {},
                                ),
                                buildBooks(
                                  Color(0xffffc6bb),
                                  "Images/book_brige.png",
                                  "Book 2",
                                  "No.6",
                                  () {},
                                ),
                                buildBooks(
                                  Color(0xffadcec3),
                                  "Images/book_brige.png",
                                  "Book 3",
                                  "No.7",
                                  () {},
                                ),
                                buildBooks(
                                  Color(0xffffd6b0),
                                  "Images/book_brige.png",
                                  "Book 4",
                                  "No.5",
                                  () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: <Widget>[
                              SizedBox(width: 20),
                              Text(
                                "More",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1c6360)),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 230.0,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                SizedBox(width: 10),
                                buildRecommend(
                                  Color(0xfffffc9c5),
                                  "images/headphone.png",
                                  "Podcast",
                                  "",
                                  () {},
                                ),
                                buildRecommend(
                                  Color(0xffffd6b0),
                                  "images/cd.png",
                                  "Netfilx",
                                  "",
                                  () {},
                                ),
                                buildRecommend(
                                  Color(0xffadcec3),
                                  "images/education_1.png",
                                  "For Education",
                                  "",
                                  () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
