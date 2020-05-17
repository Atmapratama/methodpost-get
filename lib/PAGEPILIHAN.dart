import 'package:flutter/material.dart';
import 'package:atma9/APIPOST.dart';
import 'package:atma9/APIGET.dart';

class PagePilihan extends StatefulWidget {
  @override
  _PagePilihanState createState() => _PagePilihanState();
}

class _PagePilihanState extends State<PagePilihan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("METHOD POST-GET"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image(image: AssetImage("images/atma.jfif")),
              RaisedButton(
                  child: Text("POST PAGE"),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PostApi();
                      }));
                    });
                  }),
              RaisedButton(
                  child: Text("GET PAGE"),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GetApi();
                      }));
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}