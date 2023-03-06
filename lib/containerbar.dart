import 'package:flutter/material.dart';

class Containerbar extends StatefulWidget {
  const Containerbar({Key? key}) : super(key: key);

  @override
  State<Containerbar> createState() => _ContainerbarState();
}

class _ContainerbarState extends State<Containerbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Blue",style: TextStyle(
                    color:Colors.brown,
                    fontSize: 50,
                    fontWeight: FontWeight.normal
                )),
                Text("Red")
              ],
            )),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 3,
                        offset: Offset(4, 3),
                        blurRadius: 2
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
