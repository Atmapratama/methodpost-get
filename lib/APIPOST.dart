import 'package:flutter/material.dart';
import 'package:atma9/POSTRESULT.dart';

class PostApi extends StatefulWidget {
  @override
  _PostApiState createState() => _PostApiState();
}

class _PostApiState extends State<PostApi> {
  PostResult postResult;
  final textInputApiNama = TextEditingController();
  final textInputApijob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('METHOD POST'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                (postResult != null)
                    ? postResult.name + postResult.job
                    : "Tidak Ada Data",
              ),
              TextField(
                controller: textInputApiNama,
              ),
              TextField(
                controller: textInputApijob,
              ),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI(
                          textInputApiNama.text, textInputApijob.text)
                      .then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text(" POST "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
