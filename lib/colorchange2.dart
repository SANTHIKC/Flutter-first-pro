import 'package:flutter/material.dart';

class Colorchange2 extends StatefulWidget {
  const Colorchange2({Key? key}) : super(key: key);

  @override
  State<Colorchange2> createState() => _Colorchange2State();
}

class _Colorchange2State extends State<Colorchange2> {
  int count=0;
  Color clrs1=Colors.white;
  Color clrs=Colors.white;
  Color clrs2=Colors.white;
  Color clrs3=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ((){
        setState((
            ) {
          count++;
          if(count==1)
          {
            clrs1=Colors.red;
          }
          else if(count==2)
          {
            clrs1=Colors.white;
            clrs=Colors.red;
          }
          else if(count==3)
          {
            clrs=Colors.white;
            clrs2=Colors.red;
          }
          else if(count==4)
          {
            clrs2=Colors.white;
            clrs3=Colors.red;
          }
          else
          {
            count=0;
            clrs3=Colors.white;
          }
        });
      }
      )),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: clrs1,
                ),

                Container(
                  height: 100,
                  width: 100,
                  color: clrs,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: clrs2,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: clrs3,
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
