import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_signup_screen/login.dart';
import 'package:login_signup_screen/signup.dart';
import 'package:login_signup_screen/edit_profile.dart';
import 'package:login_signup_screen/book.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                    },
                    color: Color(0xff0081CB),
                    height: 60,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "View Profile",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 40),
                  MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookAppPage()));
                    },
                    color: Color(0xff0081CB),
                    height: 60,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Book appointment",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 40),
                  MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                    color: Color(0xff0081CB),
                    height: 60,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "View medical info",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 40),
                  MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                    color: Color(0xff0081CB),
                    height: 60,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Covid-19 guidelines",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
