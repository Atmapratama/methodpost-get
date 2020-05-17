import 'package:flutter/material.dart';
import 'package:atma9/GETRESULT.dart';

class GetApi extends StatefulWidget {
  @override
  _GetApiState createState() => _GetApiState();
}

class _GetApiState extends State<GetApi> {
  final textInputId = TextEditingController();
  User user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("METHOD GET"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                (user != null) ? user.id + " | " + user.name : "Tidak Ada Data",
              ),
              TextField(
                controller: textInputId,
              ),
              RaisedButton(
                onPressed: () {
                  User.connectToAPI(textInputId.text).then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text(" GET "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
