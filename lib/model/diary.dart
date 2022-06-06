// ignore: prefer_const_declarations
// ignore_for_file: prefer_const_declarations

// ignore: non_constant_identifier_names
import 'dart:convert';

final String Userstable = "Users";
// ignore: non_constant_identifier_names
final String DiaryTable = 'Diarytable';

class UsersFields {
  static final String username = 'username';
  static final String password = 'password';
}

class User {
  final String username;
  final String password;

  User({
    required this.username,
    required this.password,
  });
  User copy({String? username, String? password}) => User(
      username: username ?? this.username, password: password ?? this.password);
  Map<String, Object?> toJson() => {
        UsersFields.username: username,
        UsersFields.password: password,
      };
}

class DiaryFields {
  static final String id = 'id';
  static final String username = 'Username';
  static final String description = 'description';
  static final String date = 'date';
  static final String eventtile = 'eventtile';
}

class Diary {
  final int? id;
  final String username;
  final String description;
  final String eventtile;
  final DateTime createdTime;

  Diary(
      {this.id,
      required this.username,
      required this.description,
      required this.eventtile,
      required this.createdTime});
  Map<String, Object?> toJson() => {
        DiaryFields.id: id,
        DiaryFields.username: username,
        DiaryFields.description: description,
        DiaryFields.eventtile: eventtile,
        DiaryFields.date: createdTime.toIso8601String(),
      };
}
