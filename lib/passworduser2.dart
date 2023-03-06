import 'package:flutter/material.dart';

class Passworduser2 extends StatefulWidget {
  String password;
  String username;

  Passworduser2({required this.username,required this.password});


  @override
  State<Passworduser2> createState() => _Passworduser2State();
}

class _Passworduser2State extends State<Passworduser2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget.password),
            Text(widget.username),


          ],
        ),
      ),
    );
  }
}
