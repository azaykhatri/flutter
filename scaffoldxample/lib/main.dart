import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
void main() => runApp(scaffoldex());

class scaffoldex extends StatefulWidget {
  @override
  _scaffoldexState createState() => _scaffoldexState();
}

class _scaffoldexState extends State<scaffoldex> {
  int _count=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Scafold example'),
        ),
        body: Center(
          child: Text("You have pressed + button $_count times"),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.00,
          ),
        ),
        floatingActionButton: FloatingActionButton(

          onPressed: ()=> setState((){
            _count++;
          }),
          tooltip: 'increment operator',
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
      ),
    );
  }
}
