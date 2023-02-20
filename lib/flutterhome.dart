import 'package:flutter/material.dart';

class FlutterHome extends StatefulWidget {
  const FlutterHome({Key? key}) : super(key: key);

  @override
  State<FlutterHome> createState() => _FlutterHomeState();
}

class _FlutterHomeState extends State<FlutterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text("Hello"),
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("WELCOME"),
              Text("TO"),
              Text("FLUTTER"),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.lightGreenAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],

          ),

          Text("Choose"),
          Text("Your"),
          Text("Project"),
        ],

      ) ,

    );
  }
}
