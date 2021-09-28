import 'package:flutter/material.dart';
import 'package:flutter_sprintsday5/screens/detailScreen.dart';
import 'package:flutter_sprintsday5/model/User.dart';
import 'package:flutter_sprintsday5/services/UserService.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  List<User> usersList = [];
  bool isLoading = true;
  getUserList() async {
    usersList = await UserService().getUser();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,title: Text('Http Request'),),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
          itemCount: usersList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${usersList[index].name}"),
              ),
              trailing: Icon(Icons.people),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => detailScreen(usersList,index)),
                );
              },

            );
          })













      ,
    );
  }
}
