import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/model/todos_model.dart';

class dioDeneme extends StatefulWidget {
  const dioDeneme({super.key});

  @override
  State<dioDeneme> createState() => _dioDenemeState();
}

class _dioDenemeState extends State<dioDeneme> {
  Future<List<ToDos>> _getToDos() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/todos');
      List<ToDos> _userList = [];
      if (response.statusCode == 200) {
        _userList =
            (response.data as List).map((e) => ToDos.fromMap(e)).toList();
      }
      return _userList;
    } on DioError catch (e) {
      return Future.error(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: _getToDos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var userList = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) {
                var user = userList[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        title: Text(user.title),
                        subtitle: Text(user.completed.toString()),
                        leading: Text(user.userId.toString()),
                        trailing: Text(user.id.toString()),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('toDos Bilgileri'),
                                content: Text("user id numarası:" +
                                    user.id.toString() +
                                    " " +
                                    "title:" +
                                    user.title +
                                    " " +
                                    "completed:" +
                                    user.completed.toString() +
                                    " " +
                                    "id numarası:" +
                                    user.id.toString()),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Ok'))
                                ],
                              );
                            },
                          );
                          debugPrint("basıldı");
                          debugPrint("user id numarası:" +
                              user.id.toString() +
                              " " +
                              "title:" +
                              user.title +
                              " " +
                              "completed:" +
                              user.completed.toString() +
                              " " +
                              "id numarası:" +
                              user.id.toString());
                        }),
                  ),
                );
              },
              itemCount: userList!.length,
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else
            return CircularProgressIndicator();
        },
      ),
    );
  }
}
