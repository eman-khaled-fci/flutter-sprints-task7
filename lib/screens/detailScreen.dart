import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sprintsday5/model/User.dart';

import '../utils.dart';


class detailScreen extends StatelessWidget {
  final List<User> usedList;
  final int usedIndex;

  detailScreen(this.usedList, this.usedIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text('Detail Screen'),
      ),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
          margin: EdgeInsets.all(30),
          width: 500,
          height: 700,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,15),
                  child: Text('Usr Data:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),),
                ),
                InkWell(

                  onTap: (){



                    LaunchMyURL("mailto:${usedList[usedIndex].email}?subject=newSubject&body=newEmail");


                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Email: ${usedList[usedIndex].email}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  ),
                ),


                InkWell(
                  onTap: (){
                    LaunchMyURL('tel:${usedList[usedIndex].phone}');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Phone: ${usedList[usedIndex].phone}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  ),
                ),


                InkWell(
                  onTap: (){

                    LaunchMyURL('http://${usedList[usedIndex].website}');

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Website: ${usedList[usedIndex].website}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,)),
                  ),
                ),
                
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
