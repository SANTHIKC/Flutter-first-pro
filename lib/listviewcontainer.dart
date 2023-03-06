import 'package:flutter/material.dart';

class ListviewContainer extends StatefulWidget {
  const ListviewContainer({Key? key}) : super(key: key);

  @override
  State<ListviewContainer> createState() => _ListviewContainerState();
}

class _ListviewContainerState extends State<ListviewContainer> {
  int selectedindex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemBuilder: (context,index) {
                    return
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              selectedindex=index;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            color: selectedindex==index?Colors.pink:Colors.green,//ternary operator
                          ),
                        ),
                      );
                  }
              ),
            ),
          ),
        ],
      ),

    );
  }
}
