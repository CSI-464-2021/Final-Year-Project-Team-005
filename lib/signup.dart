import 'package:flutter/material.dart';
import 'package:login_signup_screen/login.dart';
import 'package:login_signup_screen/dashboard.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RegisterUser extends StatelessWidget {
  String name, surname, email, phone, location;

  //TextController to read text entered in text field
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _location = TextEditingController();
  final _password = TextEditingController();
  final _confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome Onboard!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fill in your details and signup! ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  TextFormField(
                    controller: _name,
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Full Name",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _email,
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Email",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _phone,
                    autocorrect: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _location,
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Location",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _password,
                    autocorrect: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Password",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _confirmpassword,
                    autocorrect: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                color: Color(0xff00B0FF),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  TextButton(
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
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
