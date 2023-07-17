import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("use with Api")
    ,
    )
    ,
    floatingActionButton
    :
    FloatingActionButton
    (
    onPressed
    :
    (
    ){
    fetchUser();
    },
    ),
    body: ListView.builder(
    itemCount: users.length,
    itemBuilder: (context,index){
    final user=users[index];
    final city=user['email'].toString();
    return ListTile(
    title: Text(city),
    );
    }
    ),
    );
  }

  fetchUser() async {
    const url = "https://randomuser.me/api/?results=10";
    final uri = Uri.parse(url);
    final responce = await http.get(uri);
    final body = responce.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
  }
}
