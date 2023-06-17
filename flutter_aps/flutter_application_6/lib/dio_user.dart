import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/model/user_model.dart';

class dio extends StatefulWidget {
  const dio({super.key});

  @override
  State<dio> createState() => _dioState();
}

class _dioState extends State<dio> {
  Future<List<UserModel>> _getUserList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/users');
      List<UserModel> _userList = [];
      if (response.statusCode == 200) {
        _userList =
            (response.data as List).map((e) => UserModel.fromMap(e)).toList();
        //debugPrint(response.data.toString());
      }
      return _userList;
    } on DioError catch (e) {
      return Future.error(e.message);
    }
  }

  late final Future<List<UserModel>> _userList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /* _userList in olması için _getUserList in tetiklenmesi lazım */
    _userList = _getUserList();
  }

  Widget build(BuildContext context) {
    // _getUserList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Kütüphanesi'),
      ),
      body: Center(
          child: FutureBuilder<List<UserModel>>(
        // future: _getUserList(),
        future: _userList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var userList = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) {
                var user = userList[index];
                return ListTile(
                  title: Text(user.email),
                  subtitle: Text(user.address.toString()),
                  leading: Text(user.id.toString()),
                );
              },
              itemCount: userList!.length,
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else
            return CircularProgressIndicator();
        },
      )),
    );
  }
}
