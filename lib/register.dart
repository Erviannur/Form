import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.purple.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  size: 40,
                ),
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  size: 40,
                ),
                hintText: "E-mail",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "E-mail",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 40,
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.black,
              elevation: 5,
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, '/notifcreate');
                },
                child: Center(
                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(fontSize: 15, color: Colors.white, height: 3.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Text('Already have an account? ? Sign In', style: TextStyle(color: Colors.black, fontSize: 15)),
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
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
