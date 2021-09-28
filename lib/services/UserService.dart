import 'package:dio/dio.dart';
import 'package:flutter_sprintsday5/model/User.dart';

class UserService{
  String BaseUrl="https://jsonplaceholder.typicode.com";
  String usersLink="/users";
  Future <List<User>> getUser()async{
    List<User>userList=[];
Response response=await Dio().get('$BaseUrl$usersLink');
var data=response.data;
data.forEach((element){
  userList.add(User.fromJson(element));
});
return userList;














  }
}