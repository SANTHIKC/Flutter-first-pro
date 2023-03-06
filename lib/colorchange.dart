import 'package:flutter/material.dart';

class Colorchange extends StatefulWidget {
  const Colorchange({Key? key}) : super(key: key);

  @override
  State<Colorchange> createState() => _ColorchangeState();
}

class _ColorchangeState extends State<Colorchange> {
  Color clrs = Colors.red;
  int count=0;
  counter ()
  {
    count++;
    if(count==1)
    {
      setState((){
        clrs=Colors.black;
      });

    }
    else if(count==2)
    {
      setState((){
        clrs=Colors.purpleAccent;
      });

    }
    else if(count==3)
    {
      setState((){
        clrs=Colors.orange;
      });

    }
    else
    {
      setState((){
        count=0;
        clrs=Colors.red;
      });

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter();
        },
        child: Text("+"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: clrs,
        ),
      ),
    );
  }
}
