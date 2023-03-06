import 'package:flutter/material.dart';

import 'button1.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: FloatingActionButton(onPressed: (){
              },child: Text("click"),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("ok")),
            TextButton(onPressed: (){
              print("hello");
            }, child: Text("press")),
            InkWell(
              onTap: (){
                print("hiii");
                Navigator.of(context).push(MaterialPageRoute(builder: (context){return Button1();}));
              },
              child: Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration( borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topLeft: Radius.circular(10)),
                  color: Colors.lightGreen,
                ),
                child: Center(child: Text("ok")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
