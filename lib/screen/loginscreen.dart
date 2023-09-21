import 'package:application_project/components/bottombar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool formVisible;
  int? _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Color(0xfffef6eb),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 40.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Color(0xff1a4d44),
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        "The Library App",
                        style: TextStyle(
                          color: Color(0xff1a4d44),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40.0),
                      Container(
                        width: 250.0,
                        height: 250.0,
                        margin: EdgeInsets.only(left: 15),
                        padding: EdgeInsets.all(50.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/girl_reading_book.png'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      Container(
                        width: 170.0,
                        height: 30.0,
                        child: RaisedButton(
                          color: Color(0xffff8083),
                          textColor: Color(0xfffef6eb),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "Sign In",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          onPressed: () {
                            setState(() {
                              formVisible = true;
                              _formsIndex = 1;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        width: 170.0,
                        height: 30.0,
                        child: RaisedButton(
                          color: Color(0xffffd5b2),
                          textColor: Color(0xffec7b1b),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          onPressed: () {
                            setState(() {
                              formVisible = true;
                              _formsIndex = 2;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        width: 170.0,
                        height: 30.0,
                        child: OutlineButton(
                          borderSide: BorderSide(color: Color(0xffffc6bb)),
                          color: Colors.red,
                          textColor: Color(0xfff67472),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "Continue with google",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: (!formVisible)
                ? null
                : Container(
                    color: Colors.black54,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffffc6bb)),
                              child: IconButton(
                                color: Color(0xfffef6eb),
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    formVisible = false;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 300),
                            child:
                                _formsIndex == 1 ? SigninForm() : SignupForm(),
                          ),
                        )
                      ],
                    ),
                  ),
          )
        ],
      ),
    ));
  }
}

class SigninForm extends StatelessWidget {
  const SigninForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xffffc6bb),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Color(0xfffef6eb),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: (TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.0),
                hintText: "Enter Username",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            )),
          ),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Color(0xfffef6eb),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.0),
                hintText: "Enter Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            child: Text(
              "Forgot Password?".toUpperCase(),
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffed7871),
                  letterSpacing: 1.8),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Color(0xfff67472),
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Sign In"),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => BottomNegativeBar()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xffffd5b2),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Color(0xfffef6eb),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.0),
                hintText: "Enter Username",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Color(0xfffef6eb),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.0),
                hintText: "Enter Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: const Color(0xfffff6ea),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20.0),
                hintText: "Confirm Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Color(0xffec7b1b),
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Sign Up"),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => BottomNegativeBar()),
              );
            },
          ),
        ],
      ),
    );
  }
}
