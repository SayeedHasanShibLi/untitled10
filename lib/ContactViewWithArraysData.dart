
import 'package:flutter/material.dart';

class ContactViewWithArraysData extends StatefulWidget {
  var readylist;
  ContactViewWithArraysData(this.readylist);

  @override
  _ContactViewWithArraysDataState createState() => _ContactViewWithArraysDataState(this.readylist);
}

class _ContactViewWithArraysDataState extends State<ContactViewWithArraysData> {
  var uselist;
  _ContactViewWithArraysDataState(this.uselist);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name:${uselist["Name"]}",style: TextStyle(fontSize: 30),),
            Text("Phone:${uselist["Phone"]}"),

          ],
        ),
      ),


    );
  }
}
