import 'package:flutter/material.dart';

class BookReview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffadcec3),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff166665),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffadcec3),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("   Reviews",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff1c6360))),
                SizedBox(
                  height: 15,
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xfffff6ea),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Container(
                          width: 120.0,
                          height: 120.0,
                          margin: EdgeInsets.only(left: 15),
                          padding: EdgeInsets.all(50.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/book_0.png'),
                            ),
                          ),
                        ),
                        Text(
                          '5.0',
                          style: TextStyle(
                            color: Color(0xff166665),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0xffadcec3),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffadcec3),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffadcec3),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffadcec3),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffadcec3),
                            ),
                          ],
                        ),
                        Text(
                          "Based on 5 Reviews",
                          style: TextStyle(
                            color: Color(0xff166665),
                            fontWeight: FontWeight.normal,
                            fontSize: 13.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: <Widget>[
                      Text("My Favorite",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1c6360))),
                      Spacer(),
                      FlatButton(
                        child: Text("View all",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                color: Color(0xfffff6ea))),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        _buildThumbnail('images/dog.png',
                            'You should read this book!', 'Anonymous'),
                        _buildThumbnail('images/man1.png',
                            'This book is fantastic!', 'Handsome Boy'),
                        _buildThumbnail('images/girl_holding.png',
                            'It was fun!', 'Cute Girl'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Container _buildThumbnail(image, title, title2) {
  return Container(
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Color(0xfffff6ea),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xffffc9c5),
            borderRadius: (BorderRadius.circular(20.0)),
          ),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: (BorderRadius.circular(20.0)),
              image: DecorationImage(
                alignment: Alignment.centerRight,
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 5.0),
              Text(
                title2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Color(0xff1a4d44),
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Color(0xff1a4d44),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color(0xffff8083),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffff8083),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffff8083),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffff8083),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffff8083),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
