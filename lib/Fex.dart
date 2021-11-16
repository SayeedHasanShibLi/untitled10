import 'package:flutter/material.dart';
import 'package:untitled10/ContactViewWithArraysData.dart';

class Google extends StatefulWidget {
  const Google({Key? key}) : super(key: key);
  @override
  _GoogleState createState() => _GoogleState();
}
class _GoogleState extends State<Google> {

  final List peoplelist =[
    {
      "Name":"Sayeed",
      "Phone":"01845097034",
    },
    {
      "Name":"Mejan",
      "Phone":"00000000",
    },
    {
      "Name":"Raj",
      "Phone":"1111111111",
    },
    {
      "Name":"Roni",
      "Phone":"222222222",
    },
    {
      "Name":"Farhan",
      "Phone":"444444444",
    },
    {
      "Name":"Arif",
      "Phone":"666666666",
    },
    {
      "Name":"Aziz",
      "Phone":"77777777777",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts List"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.yellow,
      body: ListView.builder(itemCount: peoplelist.length,
      itemBuilder: (BuildContext context,int index){
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Text(peoplelist[index]["Name"][0]),
              ),
              title: Text(peoplelist[index]["Name"]),
              subtitle: Text(peoplelist[index]["Phone"]),
              onTap: (){
                Route route= MaterialPageRoute (builder: (context)=> ContactViewWithArraysData(peoplelist[index]));
                Navigator.push(context, route);

              },
              
            ),
          ],

        );
    },
      ),


    );
  }
}
