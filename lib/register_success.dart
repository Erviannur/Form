import 'package:flutter/material.dart';

class RegisterSuccess extends StatefulWidget {
  @override
  _RegisterSuccessState createState() => _RegisterSuccessState();
}

class _RegisterSuccessState extends State<RegisterSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.purple.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank You For Registering!', style: TextStyle(fontSize: 40.0)),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Text('Oke', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold)),
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
