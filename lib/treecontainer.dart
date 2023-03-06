import 'package:flutter/material.dart';

class Threecontainer extends StatefulWidget {
  const Threecontainer({Key? key}) : super(key: key);

  @override
  State<Threecontainer> createState() => _ThreecontainerState();
}

class _ThreecontainerState extends State<Threecontainer> {
  TextEditingController nameText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.cyan,
                child: Center(
                  child: Text("Project",style: TextStyle(
                      color: Colors.pink
                  ),),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.lightGreen,
                child: Center(
                  child: Text("Flutter",style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ),
              Container(
                height: 100,
                child:

                ListView(scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.indigo,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.purple,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.black,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.lightGreen,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.black,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellowAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.indigo,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            ],
          ),
        ],
      ),

    );
  }
}
