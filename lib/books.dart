import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  List<String>num=["January","February","March","April","May","Jun","July","August","September","October","Number","December"];
  String nm1="Santhi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [

          Expanded(

            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:20,
                itemBuilder: (context,index) {
                  return Text("hello");
                }
            ),
          )
        ],
      ),
    );
  }
}
