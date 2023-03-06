import 'package:flutter/material.dart';
import 'package:flutter_app_pro1/passworduser2.dart';

class Passworduser extends StatefulWidget {
  const Passworduser({Key? key}) : super(key: key);

  @override
  State<Passworduser> createState() => _PassworduserState();
}

class _PassworduserState extends State<Passworduser> {
  TextEditingController txt=TextEditingController();
  TextEditingController txt1=TextEditingController();

  bool iscliked= false;
  int iscliked1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: txt,
            decoration: InputDecoration(
              hintText: "user name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          TextField(
            controller: txt1,
            decoration: InputDecoration(
              hintText: "Passwod",
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Checkbox(value: iscliked, onChanged: (v){
            setState(() {
              iscliked =v!;
            });



          }),
          Radio(value: 1,groupValue: iscliked1,onChanged: (v){
            setState(() {
              iscliked1 = v!;
            });
          },),
          Radio(value: 2,groupValue: iscliked1,onChanged: (v){
            setState(() {
              iscliked1 = v!;
            });
          },),
          ElevatedButton(onPressed: (
              ){
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){return Passworduser2(username: txt.text,password: txt1.text,);}));

              if(txt.text=="1"&& txt1.text == "1" )
              {
              }
            });

          }, child: Text("Ok")
          ),
        ],
      ),

    );
  }
}
