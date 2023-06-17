// To parse this JSON data, do
//
//     final album = albumFromMap(jsonString);


import 'dart:convert';

Album albumFromMap(String str) => Album.fromMap(json.decode(str));

String albumToMap(Album data) => json.encode(data.toMap());

class Album {
    Album({
        required this.userId,
        required this.id,
        required this.title,
    });

    final int userId;
    final int id;
    final String title;

    factory Album.fromMap(Map<String, dynamic> json) => Album(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
    };
}
