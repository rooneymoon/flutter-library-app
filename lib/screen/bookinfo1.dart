import 'package:application_project/screen/bookreview.dart';
import 'package:application_project/screen/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookInfoOne extends StatefulWidget {
  @override
  _BookInfoOneState createState() => _BookInfoOneState();
}

class _BookInfoOneState extends State<BookInfoOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffadcec3),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.star,
              color: Color(0xff1c6360),
            ),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => BookReview1()),
              );
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff166665),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Color(0xffadcec3),
        child: Stack(
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 150),
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
              height: 270,
              width: 270,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfffff6ea),
              ),
            ),
            Positioned(
              top: 30,
              left: 180,
              child: Container(
                width: 200,
                height: 250,
                child: Image(
                  image: AssetImage("images/book_0.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Color(0xfffff6ea)),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 30.0),
                          Expanded(
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      "Little Blue Moon",
                                      style: TextStyle(
                                          color: Color(0xff1c6360),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                    ),
                                    trailing: IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 0),
                                    child: Text(
                                      "Just a fairy tale",
                                      style:
                                          TextStyle(color: Color(0xff1c6360)),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Buy E-Book',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff166665),
                                            )),
                                        Text('400 Baht',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff166665),
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Stack(
                                    children: [
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20)),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                      ),
                                      Container(
                                        width: 120,
                                        height: 40,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(
                                          color: Color(0xffadcec3),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          child: Text(
                                            '-       1       +',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20)),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Borrow Book',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff166665),
                                                )),
                                            Text('Free',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff166665),
                                                ))
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Stack(
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20)),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                          ),
                                          Container(
                                            width: 120,
                                            height: 40,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            decoration: BoxDecoration(
                                              color: Color(0xffadcec3),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: MaterialButton(
                                              onPressed: () {},
                                              child: Text(
                                                '-       0       +',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20)
                                        ],
                                      ),
                                      ExpansionTile(
                                        title: Text(
                                          "Details",
                                          style: TextStyle(
                                              color: Color(0xff1c6360),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text(
                                                "The book of moon\nThe Moon Is Beautiful, Isn't It?",
                                                style: TextStyle(
                                                    color: Color(0xff1c6360))),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0)),
                              color: Color(0xff1c6360),
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Spacer(),
                                    RaisedButton(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 16.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) => cart()),
                                        );
                                      },
                                      color: Color(0xffadcec3),
                                      textColor: Colors.white,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          SizedBox(width: 5),
                                          Text(
                                            "Add to Cart",
                                            style: TextStyle(
                                                color: Color(0xff1c6360),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                          const SizedBox(width: 2),
                                          Container(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color: Color(0xff1c6360),
                                              size: 16.0,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
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
