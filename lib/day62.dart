import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Happy extends StatefulWidget {
  const Happy({Key? key}) : super(key: key);

  @override
  _HappyState createState() => _HappyState();
}

class _HappyState extends State<Happy> {
  
  late List readyData;
  late List unfilterData;

  Future<String> loadjsonData()async{
    var jsontex = await rootBundle.loadString('assets/jsonData.json');
    setState(() {
      readyData= jsonDecode(jsontex);
    });
    this.unfilterData= readyData;
    
    return 'susscessfully gat data';
  }
  searchbar(str){
    var stringExist = str.length > 0 ? true: false;
    if(stringExist){
      var filterData = [];
      for(int i =0;i<unfilterData.length;i++){
        String Name = unfilterData[i]['Name'].toUpperCase();
        if(Name.contains(str.toUpperCase())){
          filterData.add(unfilterData[i]);
        }
        setState(() {
          this.readyData = filterData;
        });

      }

    }else
      setState(() {
        this.readyData = this.unfilterData;
      });
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.loadjsonData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Search Contacts",
              icon: Icon(Icons.search),
            ),
            onChanged: (String str){
              this.searchbar(str);
            },
          ),
          Expanded(child: ListView.builder(
              itemCount: readyData.length ,
              itemBuilder: (BuildContext context,int index){
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(readyData[index]['Name'][0]),
                      ),
                      title: Text(readyData[index]['Name']),
                      subtitle: Text(readyData[index]['Phone']),
                    )
                  ],
                );
              }))
        ],
      ),


    );
  }
}
