import 'package:flutter/material.dart';

class Pattermaker extends StatefulWidget {
  const Pattermaker({Key? key}) : super(key: key);

  @override
  State<Pattermaker> createState() => _PattermakerState();
}

class _PattermakerState extends State<Pattermaker> {
  TextEditingController txt = TextEditingController();
  TextEditingController mxt = TextEditingController();
  TextEditingController vxt = TextEditingController();
  TextEditingController rxt = TextEditingController();
  TextEditingController sxt = TextEditingController();
  var formkey=GlobalKey<FormState>();
  bool isclick=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: txt,
                  validator: (v){
                    if(v!.isEmpty){
                      return"please enter your name";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: mxt,
                  validator: (s){
                    if(s!.isEmpty)
                    {
                      return"enter your age";
                    }
                    if(s!.length>3)
                    {
                      return"enter age";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Age",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (m){
                    if(m!.isEmpty)
                    {
                      return"enter email address";
                    }
                  },
                  controller: vxt,
                  decoration: InputDecoration(
                    hintText: "Email Address",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(
                      Icons.mail,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: rxt,
                  validator: (n){
                    if(n!.isEmpty)
                    {
                      return"enter phone number";
                    }
                    if(n!.length>10)
                    {
                      return"enter 10 number";
                    }
                    if(n!.length<10)
                    {
                      return"enter 10 number";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: sxt,
                  validator: (x){
                    if(x!.isEmpty) {
                      return "enter password";
                    }
                    if(x!.length>6)
                    {
                      return"minimum 6 character";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  bool isvalid = formkey.currentState!.validate();
                  if(isvalid == false)
                  {
                    return;
                  }
                  else
                  {

                  }
                },
                child: Text("Click"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
