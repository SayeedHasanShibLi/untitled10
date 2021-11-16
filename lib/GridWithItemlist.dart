import 'package:flutter/material.dart';

class Run extends StatefulWidget {
  const Run({Key? key}) : super(key: key);

  @override
  _RunState createState() => _RunState();
}
class _RunState extends State<Run> {
  final List<String>_Items=[
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/six.jpg',
    'assets/seven.jpg',
    'assets/seven.jpg',
    'assets/six.jpg',
    'assets/five.jpg',
    'assets/four.jpg',
    'assets/three.jpg',
    'assets/two.jpg',
    'assets/one.jpg',
    'assets/seven.jpg',
    'assets/seven.jpg',
    'assets/six.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text('Dhamaka'),
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
      body: SafeArea(child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 225,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage('assets/Dhamaka.jpg')),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.3),
                  ],
                    begin: Alignment.bottomRight
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Dhamaka Shop",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.indigoAccent),),
                    SizedBox(height: 15,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent
                      ),
                      child: Center(child: Text("Shop Now",style: TextStyle(color: Colors.deepPurple[900]),)),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Expanded(child: GridView.count(crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: _Items.map((Item) => Card(
              color: Colors.transparent,
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(Item),
                  fit: BoxFit.cover,
                  ),
                ),
                child: Transform.translate(offset: Offset(50, -50),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
                    child: Icon(Icons.cut),
                  ),
                ),
              ),
            )).toList(),
            )),
          ],
        ),
      )),
    );
  }
}
