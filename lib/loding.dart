import 'dart:developer';

import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_glow/flutter_glow.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool checkboxSelected = false;
  bool switchSelected = false;
  bool radioSelected = false;
  bool iconSelected = false;
  double sliderValue = 0;
  final GlobalKey<ScaffoldState> _globalKey =GlobalKey<ScaffoldState>();
  _showsnackbar(){
    var _snackbar= SnackBar(content: Text("Yeah! It`s Cool today"));
    _globalKey.currentState!.showSnackBar(_snackbar);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expandable(
              primaryWidget: Container(
                child: Text('Honey'),
              ),
              secondaryWidget: Column(
                children: [
                  Text("On Facebook, people daily updates their status according to their emotions and they also used to uplood   new photos on Facebook. For giving feedback, on their post, we always use comment section. For your special ones, you need stylish and long comments, which you can get from this article."),
                  SizedBox(height: 20,),
                  Text("On Facebook, people daily updates their status according to their emotions and they also used to uplood   new photos on Facebook. For giving feedback, on their post, we always use comment section. For your special ones, you need stylish and long comments, which you can get from this article."),
                ],
              ),
              showArrowIcon: true,
              centralizePrimaryWidget: true,
              arrowLocation: ArrowLocation.right,
              animationDuration: Duration(seconds: 2),
              elevation: 10,
              backgroundColor: Colors.lightBlue,
              isClickable: true,
              padding: EdgeInsets.all(10.0),

            ),
            SizedBox(height: 30,),
            GlowButton(child: Text("Glowing"), onPressed: (){},glowColor: Colors.lightBlue,),
            SizedBox(height: 30,),
            GlowIcon(Icons.ten_mp,color: Colors.orange,),
            SizedBox(height: 30,),

            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                GlowButton(child: Text("Glow"), onPressed: _showsnackbar,glowColor: Colors.red,),
                SizedBox(height: 30,),
                GlowCheckbox(
                  value: checkboxSelected,
                  enable: true,
                  color: Colors.greenAccent,
                  onChange: (bool value) {
                    setState(() {
                      checkboxSelected = !checkboxSelected;
                    });
                  },
                ),
                SizedBox(height: 30,),
                GestureDetector(onTap: (){setState(() {Icon(Icons.twenty_three_mp_outlined);
                });},),


                GlowIcon(Icons.add_a_photo,color: Colors.green,size: 64,blurRadius: 9,),
                SizedBox(height: 30,),
                GlowText('Glow Text',style: TextStyle(fontSize: 40, color: Colors.yellow),),
                SizedBox(height: 30,),
              ],
            ),

            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlowRadio<bool>(
                  value: true,
                  groupValue: radioSelected,
                  color: Colors.yellow,
                  onChange: (value) {
                    setState(() {
                      radioSelected = value;log(value.toString());});
                  },
                ),
                GlowRadio<bool>(
                  value: false,
                  groupValue: radioSelected,
                  color: Colors.yellow,
                  onChange: (value) {
                    setState(() {
                      radioSelected = value;log(value.toString());});
                  },
                ),
                SizedBox(height: 30,),
                GlowSwitch(value: switchSelected,activeColor: Colors.red.withOpacity(0.7),blurRadius: 5, onChanged: (value){setState(() {
                });}
                ),
                SizedBox(height: 30,),
                GlowLineProgress(blurRadius: 12,glowColor: Colors.orange,),

              ],

            )

          ],
        ),
      ),



    );
  }
}
