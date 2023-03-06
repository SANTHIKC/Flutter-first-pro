import 'package:flutter/material.dart';

class TextListview extends StatefulWidget {
  const TextListview({Key? key}) : super(key: key);

  @override
  State<TextListview> createState() => _TextListviewState();
}

class _TextListviewState extends State<TextListview> {
  List<String>num=[];
  List listdata = [
    {
      "id": 7,
      "email": "michael.lawson@reqres.in",
      "first_name": "Michael",
      "last_name": "Lawson",
      "avatar": "https://reqres.in/img/faces/7-image.jpg"
    },
    {
      "id": 8,
      "email": "lindsay.ferguson@reqres.in",
      "first_name": "Lindsay",
      "last_name": "Ferguson",
      "avatar": "https://reqres.in/img/faces/8-image.jpg"
    },
    {
      "id": 9,
      "email": "tobias.funke@reqres.in",
      "first_name": "Tobias",
      "last_name": "Funke",
      "avatar": "https://reqres.in/img/faces/9-image.jpg"
    },
    {
      "id": 10,
      "email": "byron.fields@reqres.in",
      "first_name": "Byron",
      "last_name": "Fields",
      "avatar": "https://reqres.in/img/faces/10-image.jpg"
    },
    {
      "id": 11,
      "email": "george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "id": 12,
      "email": "rachel.howell@reqres.in",
      "first_name": "Rachel",
      "last_name": "Howell",
      "avatar": "https://reqres.in/img/faces/12-image.jpg"
    }
  ];
  TextEditingController txt=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: listdata.length,
                itemBuilder: (context,index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      color: Colors.blueAccent,
                      child: ListTile(
                        title: Text(listdata[index]["first_name"]),
                        leading:Container(
                          height: 60,
                          width: 60,
                          decoration:BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            //image shape round
                            image: DecorationImage
                              (image:NetworkImage(listdata[index]["avatar"]) ),
                          ) ,
                          // child: Image.network(listdata[index]["avatar"]),
                        ),
                        subtitle: Text(listdata[index]["email"]),
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
