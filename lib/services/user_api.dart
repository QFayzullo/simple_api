import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/users.dart';
class UserApi {
   static Future<List<User>> fetchUser() async {
  const url = "https://randomuser.me/api/?results=100";
  final uri = Uri.parse(url);
  final responce = await http.get(uri);
  final body = responce.body;
  final json = jsonDecode(body);
  final results = json['results'] as List<dynamic>;
  final users = results.map((e) {
    return User.fromMap(e);
  }).toList();
  return users;
}
}