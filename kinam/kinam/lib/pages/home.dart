import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kinmel gharm"),
      ),
      drawer: Drawer(),
      body: Text("this is an example of text"),
    );
  }
}
