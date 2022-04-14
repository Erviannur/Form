import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
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
            Text(
              "Reset password",
              style: TextStyle(fontSize: 20, color: Colors.black),
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
                hintText: "Konfirmasi Password",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Konfirmasi Password",
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
                  Navigator.pushNamed(context, '/notifreset');
                },
                child: Center(
                  child: Text(
                    "UPDATE PASSWORD",
                    style: TextStyle(fontSize: 15, color: Colors.white, height: 3.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Text('Already have an account? Sign In', style: TextStyle(color: Colors.black, fontSize: 15)),
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
