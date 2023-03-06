import 'package:flutter/material.dart';

class Listviewbuider extends StatefulWidget {
  const Listviewbuider({Key? key}) : super(key: key);

  @override
  State<Listviewbuider> createState() => _ListviewbuiderState();
}

class _ListviewbuiderState extends State<Listviewbuider> {
  List<Map<String,dynamic>>datas=[];
  TextEditingController txt=TextEditingController();
  TextEditingController txt1=TextEditingController();
  TextEditingController txt2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TextField(
            controller:txt ,
            decoration: InputDecoration(
              hintText: "name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          TextField(
            controller:txt1 ,
            decoration: InputDecoration(
              hintText: "email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),

          ),
          TextField(
            controller:txt2 ,
            decoration: InputDecoration(
              hintText: "image",

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              datas.add({"name":txt.text,"email":txt1.text,"image":txt2.text});
            });
            print(datas);
          }, child: Text("ok")),
          Expanded(
            child: ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context,index)
                {
                  return Container
                    (
                      height: 70,
                      color: Colors.white,
                      child:ListTile(
                        title: Text(datas[index]["name"]),

                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:Colors.yellow ,
                            image: DecorationImage(image: NetworkImage(datas[index]["image"])),
                          ),
                        ),
                        subtitle: Text(datas[index]["email"]),
                      ));
                }
            ),
          ),
        ],
      ),
    );
  }
}
