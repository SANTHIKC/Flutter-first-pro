import 'package:flutter/material.dart';

class SomeOne extends StatefulWidget {
  const SomeOne({Key? key}) : super(key: key);

  @override
  State<SomeOne> createState() => _SomeOneState();
}

class _SomeOneState extends State<SomeOne> {
  TextEditingController nameText=TextEditingController();
  TextEditingController nameCon=TextEditingController();
  double sum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller:nameText,
              decoration: InputDecoration(
                hintText: "Rupees",
                border: OutlineInputBorder(),
                labelText: "name",
              ),
              onChanged: (num4) {
                nameCon.clear();
                double num3;
                double?num=double.parse(num4);
                num3=(num/82);
                setState((){
                  sum=num3;
                });
                nameCon.text=sum.toString();
              },
            ),
            TextField(
              controller: nameCon,
              decoration: InputDecoration(
                hintText: "Doller",
                border: OutlineInputBorder(),
                labelText: "name",
              ),
              onChanged: (v) {
                nameText.clear();
                double nm;
                double?nm1=double.parse(v);
                nm=(nm1*82);
                setState(() {
                  sum=nm;
                });
                nameText.text=sum.toString();
              },
            ),

            Text("result is${sum}"),
          ],
        ),
      ),
    );
  }
}
