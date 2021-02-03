import 'package:flutter/material.dart';
import 'Class.dart';
import 'API/api_doc.dart';
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loading = false;
  Shit idList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dota 2')),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        loading == false ? Container() : CircularProgressIndicator(),
        idList == null
            ? Container()
            : Container(
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      children: [Text('page'), Text(idList.page.toString())],
                    )
                  ],
                ),
              ),
        RaisedButton(
          onPressed: () async {
            setState(() {
              loading = true;
            });
            idList = Shit.fromJson(jsonDecode(
              await ApiDoc().getInfo(),
            ));
            setState(() {
              loading = false;
            });
          },
        ),
      ]),
    );
  }
}
