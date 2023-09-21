import 'package:application_project/screen/loginscreen.dart';
import 'package:application_project/screen/editprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLibrary(),
    );
  }
}

class MyLibrary extends StatefulWidget {
  @override
  _MyLibraryState createState() => _MyLibraryState();
}

Widget buildSearchbox() {
  return Container(
      child: Stack(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 200),
        height: 170,
        width: 170,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xfffef6eb),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 220),
        width: 160,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            alignment: Alignment.topRight,
            image: AssetImage('images/cat_bookshelf.png'),
          ),
          color: Colors.transparent,
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("   Good",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xfffff6ea))),
              Text("   Morning",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xfffff6ea))),
              Text("   Anonymous",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff1c6360))),
              SizedBox(
                height: 20,
              ),
              Material(
                elevation: 5.0,
                color: Color(0xfffff6ea),
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
                        color: Color(0xffafb3bc).withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ));
}

Widget buildListView1() {
  return Container(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 15),
        Text(
          "My Library",
          style: TextStyle(
            color: Color(0xff1a4d44),
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(width: 20.0),
              Text(
                "My favorite",
                style: TextStyle(
                  color: Color(0xff1a4d44),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(width: 180.0),
              OutlineButton(
                borderSide: BorderSide(color: Color(0xff1c6360)),
                color: Color(0xff1c6360),
                textColor: Color(0xff1c6360),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  "See all",
                  style: TextStyle(fontSize: 15.0),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildListView2() {
  return Container(
    width: double.infinity,
    child: Column(
      children: <Widget>[
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: <Widget>[
              SizedBox(width: 20.0),
              Text(
                "My Purchases",
                style: TextStyle(
                  color: Color(0xff1c6360),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(width: 180.0),
              Text(
                "3 Total",
                style: TextStyle(
                  color: Color(0xff1c6360),
                  fontWeight: FontWeight.normal,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildMyLibraryCard(color, image, String title1, String title2) {
  return Container(
    margin: EdgeInsets.all(5.0),
    height: 180,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: (color),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Container(
          width: 100.0,
          height: 100.0,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xfffff6ea),
          ),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xfffff6ea)),
          ),
        ),
        SizedBox(height: 10),
        Text(title1,
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
            child: Icon(Icons.favorite),
            onPressed: () {},
          ),
        ),
        SizedBox(height: 2),
      ],
    ),
  );
}

Widget buildMyPurchasesCard(color, image, String title1, String title2) {
  return Container(
    margin: EdgeInsets.all(5.0),
    padding: EdgeInsets.all(3.0),
    height: 180,
    width: 120,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(30), color: (color)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Container(
          width: 100.0,
          height: 100,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xfffff6ea),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xfffff6ea),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(title1,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0xff1c6360))),
        Text(title2,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
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
            onPressed: () {},
          ),
        ),
        SizedBox(height: 2),
      ],
    ),
  );
}

class _MyLibraryState extends State<MyLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.location_searching,
              color: Color(0xff1c6360),
            ),
            onPressed: () => {},
          ),
        ],
        backgroundColor: Color(0xffffc9c5),
        leading: PopupMenuButton(
          color: Color(0xfffff6ea),
          itemBuilder: ((context) {
            return [
              PopupMenuItem(child: Text("Help")),
              PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text("Login")),
              PopupMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()),
                    );
                  },
                  child: Text("Settings")),
            ];
          }),
          icon: const Icon(
            Icons.menu,
            color: Color(0xff1c6360),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffc9c5),
        ),
        padding: const EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            buildSearchbox(),
            SizedBox(height: 1.0),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      color: Color(0xfffff6ea),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          buildListView1(),
                          SizedBox(height: 8),
                          Container(
                            height: 230.0,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                SizedBox(width: 10),
                                buildMyLibraryCard(Color(0xffadcec3),
                                    "images/book_0.png", "Little Blue", "No.1"),
                                buildMyLibraryCard(
                                    Color(0xffffc6bb),
                                    "images/book_pink.png",
                                    "Pink Planet",
                                    "No.8"),
                                buildMyLibraryCard(
                                    Color(0xffffd6b0),
                                    "images/book_yellow.png",
                                    "Hello World",
                                    "No.5"),
                                buildMyLibraryCard(Color(0xffffc6bb),
                                    "images/pink_book_0.png", "ILYSB", "No.2")
                              ],
                            ),
                          ),
                          buildListView2(),
                          SizedBox(height: 8),
                          Container(
                            height: 230.0,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                SizedBox(width: 10),
                                buildMyPurchasesCard(Color(0xffffc9c5),
                                    "images/cd_2.png", "Pig From Moon", "No.2"),
                                buildMyPurchasesCard(
                                    Color(0xffffd6b0),
                                    "images/book_yellow.png",
                                    "Little Prince",
                                    "No.3"),
                              ],
                            ),
                          ),
                          SizedBox(height: 50)
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
