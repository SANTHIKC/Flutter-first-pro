import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  const Button1({Key? key}) : super(key: key);

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  int count=0;
  counter()//create new function
  {
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(onPressed: (){
        counter();//function calling
      },
        child: Text("+"),),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Counter Button"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count"),
            Text(count.toString()),
            FloatingActionButton(onPressed:  (){
              setState(() {
                count=0;
              });
            },
              child:Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
