import 'package:flutter/material.dart';
void main()=> runApp(Griddemo());

class Griddemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: GridView.count(crossAxisCount: 3,
        children: List.generate(100, (index){
          return Center(
          child: Text('Item $index', style: Theme.of(context).textTheme.headline6,),
          );
        }),
      ),
      ),
    );
  }
}