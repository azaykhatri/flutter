import 'package:flutter/material.dart';
final GlobalKey<ScaffoldState>scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackbar= const SnackBar(content: Text('Notification Clicked'));
void main(){
  runApp(appBarDemo(),);
}

class appBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        key:scaffoldKey,
        appBar: AppBar(
          title: Text('appbardemo'),
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.add_alert),
              tooltip: 'Show snackbar',
              onPressed: (){
                scaffoldKey.currentState.showSnackBar(snackbar);
              },
            ),
            IconButton(
              icon: Icon(Icons.close),
              tooltip: "close",
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),

      body: const Center(
        child: Text("this is a body part ",  style:TextStyle(fontSize: 24),),
      ),
      ),
    );
  }
}
