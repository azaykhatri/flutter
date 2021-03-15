import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: <Widget>[
        Text('this is the example for  raised button'),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child:Text("first Button"),
              onPressed:(){
                return showDialog(context:
                builder:)
              },

            ),
          ],

        )

      ],
    );
  }
}
