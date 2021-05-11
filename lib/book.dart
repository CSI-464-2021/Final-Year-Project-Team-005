import 'package:flutter/material.dart';

class BookAppPage extends StatelessWidget {
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
                    "Book Appointment!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Fill in your details and book an appointment! ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: "User email",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Hospital Name",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Date",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Time",
                        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[400]))),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              MaterialButton(
                minWidth: 300,
                height: 60,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookAppPage()));
                },
                color: Color(0xff00B0FF),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Book",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
