// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final toDos = toDosFromMap(jsonString);

import 'dart:convert';


ToDos toDosFromMap(String str) => ToDos.fromMap(json.decode(str));

String toDosToMap(ToDos data) => json.encode(data.toMap());

class ToDos {
    ToDos({
        required this.userId,
        required this.id,
        required this.title,
        required this.completed,
    });

    final int userId;
    final int id;
    final String title;
    final bool completed;

    factory ToDos.fromMap(Map<String, dynamic> json) => ToDos(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };

  @override
  String toString() {
    return 'ToDos(userId: $userId, id: $id, title: $title, completed: $completed)';
  }
}
