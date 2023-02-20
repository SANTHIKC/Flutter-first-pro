import 'package:flutter/material.dart';

class Textfeildex extends StatefulWidget {
  const Textfeildex({Key? key}) : super(key: key);

  @override
  State<Textfeildex> createState() => _TextfeildexState();
}

class _TextfeildexState extends State<Textfeildex> {
  TextEditingController nameText=TextEditingController();
  TextEditingController nameCon=TextEditingController();
  int sum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller:nameText,
            ),
            TextField(
              controller: nameCon,
            ),
            Text("result is${sum}"),
            ElevatedButton(onPressed: ((){
              int num3;
              int?num=int.parse(nameText.text);
              int?num1=int.parse(nameCon.text);
              num3=num+num1;
              setState((){
                sum=num3;
              });
              print(num3);
            }), child: Text("press"))

          ],
        ),
      ),
    );
  }
}
