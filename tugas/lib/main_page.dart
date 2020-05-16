import 'package:flutter/material.dart';
import 'package:tugas/post_result_model.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PostResult postResult = null;
  String result = "";
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POST"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                decoration:
                    InputDecoration(hintText: ("Tulis Nama Kamu Disini Bro!")),
                controller: controller1,
              ),
              TextField(
                decoration:
                    InputDecoration(hintText: ("Tulis Job Kamu Disini Bro!")),
                controller: controller2,
              ),
              RaisedButton(
                child: Text("POST"),
                onPressed: () {
                  PostResult.connecToAPI(controller1.text, controller2.text)
                      .then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
