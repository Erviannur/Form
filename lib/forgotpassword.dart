import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Forgot> {
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
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot Password",
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
                  Icons.email,
                  size: 40,
                ),
                hintText: "E-mail",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "E-mail",
                labelStyle: TextStyle(color: Colors.black),
              ),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'cannot be empty';
                }
                return null;
              },
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
                  Navigator.pushNamed(context, '/notifemail');
                },
                child: Center(
                  child: Text(
                    "Send",
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
                    child: Text('Back to Sign In', style: TextStyle(color: Colors.black, fontSize: 15)),
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
