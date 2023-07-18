import 'package:flutter/material.dart';
import 'package:untitled2/model/users.dart';
import 'package:untitled2/services/user_api.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> users = [];

@override
initState(){
  super.initState();
  fetchUser();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("use with Api"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              title: Text(user.fullName),
              subtitle: Text(user.location.timezoone.description),

            );
          }),
    );
  }
  Future<void> fetchUser()async{
 final response=await UserApi.fetchUser();
 setState(() {
    users=response;
 });
  }
}
