import 'package:application_project/screen/editprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingState();
}

class _SettingState extends State<SettingPage> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
              color: Color(0xff1c6360),
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfffef6eb),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xff1c6360),
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.navigate_next,
              color: Color(0xff1c6360),
            ),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Color(0xffffc6bb)),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.1))
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Image(image: AssetImage("images/girl_2.png")),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffffc6bb),
                          ),
                          child: Icon(
                            Icons.edit,
                            size: 15,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff1a4d44),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1a4d44)),
                  )
                ],
              ),
              Divider(height: 20, thickness: 1),
              SizedBox(height: 10),
              buildAccountOption(context, "Chang Password"),
              buildAccountOption(context, "Content Settings"),
              buildAccountOption(context, "Social"),
              buildAccountOption(context, "Language"),
              buildAccountOption(context, "Privacy and Security"),
              SizedBox(height: 40),
              Row(
                children: [
                  Icon(Icons.volume_up_outlined, color: Color(0xff1a4d44)),
                  SizedBox(width: 10),
                  Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1a4d44)),
                  )
                ],
              ),
              Divider(height: 10, thickness: 1),
              SizedBox(height: 10),
              buildNotificationOption(
                  "Notifictions", valNotify1, onChangeFunction1),
              buildNotificationOption(
                  "Theme Dark", valNotify2, onChangeFunction2),
              buildNotificationOption(
                  "Opportunity", valNotify3, onChangeFunction3),
              SizedBox(height: 50),
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: Text("SIGN OUT",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Color(0xff1a4d44))),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xfffef6eb),
    );
  }
}

Padding buildNotificationOption(
    String titlr, bool value, Function onChangMethod) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(titlr,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600])),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: Color(0xffffc6bb),
            trackColor: Colors.grey,
            value: value,
            onChanged: (bool newValue) {
              onChangMethod(newValue);
            },
          ),
        )
      ],
    ),
  );
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Option 1"),
                  Text("Option 2"),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close"))
              ],
            );
          });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600])),
          Icon(Icons.arrow_forward_ios, size: 17, color: Colors.grey)
        ],
      ),
    ),
  );
}
