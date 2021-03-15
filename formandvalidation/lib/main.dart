
import 'package:flutter/material.dart';
void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appTitle='form Validation';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: myCustomFrom(),
      ),
    );
  }
}
class myCustomFrom extends StatefulWidget {
  @override
  _myCustomFromState createState() => _myCustomFromState();
}

class _myCustomFromState extends State<myCustomFrom> {
  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'enter your name',
            ),
            validator: (value){
              if(value.isEmpty){
                return'please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),

          child: RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()
              ) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Process for sumbmiting'),
                ),
                );
              }
            },
            child:Text('sumbit'),
          ),
          ),
        ],
      ),
    );
  }
}
