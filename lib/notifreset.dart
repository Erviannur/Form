import 'package:flutter/material.dart';

class NotifReset extends StatefulWidget {
  @override
  _NotifResetState createState() => _NotifResetState();
}

class _NotifResetState extends State<NotifReset> {
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
            Text('Password reset', style: TextStyle(fontSize: 40.0)),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Text("Your password has been reset successfully"),
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
