import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  static const borrowItems = <String>['1 Days', '3 Days', '7 Days'];

  final List<DropdownMenuItem<String>> _dropDownMenuItems = borrowItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _Selectedval1 = borrowItems[0];

  int _counter1 = 1;
  int _counter2 = 1;
  int _counter3 = 1;
  int num1 = 350;
  int num2 = 400;
  int num1_1 = 350;
  int num2_2 = 400;

  __counter1plus() {
    setState(() {
      _counter1++;
      num1 = num1 + num1_1;
    });
  }

  _counter2plus() {
    setState(() {
      _counter2++;
      num2 = num2 + num2_2;
    });
  }

  __counter3plus() {
    setState(() {
      _counter3++;
    });
  }

  __counter1minus() {
    setState(() {
      _counter1--;
      num1 = num1 - num1_1;
    });
  }

  __counter2minus() {
    setState(() {
      _counter2--;
      num2 = num2 - num2_2;
    });
  }

  __counter3minus() {
    setState(() {
      _counter3--;
    });
  }

  Widget BookList(colortext, color, image, title1, title2, price) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xfffff6ea),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image)),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title1,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: (colortext)),
                ),
                Text(
                  title2,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: (colortext)),
                ),
                SizedBox(height: 5),
                Text(
                  price,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfffff6ea)),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _Selectedval1 = borrowItems[1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffff6ea),
        elevation: 0,
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
        color: Color(0xfffff6ea),
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    'My Cart',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1c6360)),
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 400,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          BookList(
                            Color(0xff43a3a2),
                            Color(0xffadcec3),
                            'images/book_0.png',
                            'Little Blue Moon',
                            'No.1',
                            '$num1 baht',
                          ),
                          SizedBox(width: 5),
                          IconButton(
                              icon: Icon(Icons.remove_circle,
                                  color: Color(0xff1c6360)),
                              onPressed: __counter1minus),
                          Text('$_counter1',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              icon: Icon(Icons.add_circle,
                                  color: Color(0xff1c6360)),
                              onPressed: __counter1plus),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          BookList(
                              Color(0xffff707a),
                              Color(0xffffc6bb),
                              'images/book_pink.png',
                              'Take Care Of Your Heart',
                              'No.8',
                              '$num2 baht'),
                          SizedBox(width: 5),
                          IconButton(
                              icon: Icon(Icons.remove_circle,
                                  color: Color(0xff1c6360)),
                              onPressed: __counter2minus),
                          Text('$_counter2',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              icon: Icon(Icons.add_circle,
                                  color: Color(0xff1c6360)),
                              onPressed: _counter2plus),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          BookList(
                            Color(0xffff890b),
                            Color(0xffffd6b0),
                            'images/book_brige.png',
                            'Be Your Self',
                            'No.71',
                            'Borrow',
                          ),
                          SizedBox(width: 5),
                          IconButton(
                              icon: Icon(Icons.remove_circle,
                                  color: Color(0xff1c6360)),
                              onPressed: __counter3minus),
                          Text('$_counter3',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              icon: Icon(Icons.add_circle,
                                  color: Color(0xff1c6360)),
                              onPressed: __counter3plus),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          BookList(
                            Color(0xff43a3a2),
                            Color(0xffadcec3),
                            'images/cd_1.png',
                            'CD for Education',
                            'No.2845',
                            'Borrow',
                          ),
                          SizedBox(width: 5),
                          IconButton(
                              icon: Icon(Icons.remove_circle),
                              color: Color(0xff1c6360),
                              onPressed: __counter3minus),
                          Text('$_counter3',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              icon: Icon(Icons.add_circle),
                              color: Color(0xff1c6360),
                              onPressed: __counter3plus),
                        ],
                      ),
                      ListTile(
                        textColor: Color(0xff1c6360),
                        trailing: DropdownButton<String>(
                          value: _Selectedval1,
                          onChanged: (String? newValue) {
                            setState(() {
                              _Selectedval1 = newValue!;
                            });
                          },
                          items: this._dropDownMenuItems,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Divider(thickness: 2, color: Color(0xff1c6360)),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10.0)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff1c6360)),
                        ),
                        Text(
                          "${num1 + num2} baht",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff1c6360)),
                        ),
                      ]),
                  SizedBox(height: 5),
                  Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff1c6360),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
