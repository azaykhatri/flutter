import 'package:flutter/material.dart';

void main()=> runApp(myapp());

class myapp extends StatelessWidget {
  final appTitle='drawer  demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home:Drawerexample(
        title: appTitle
      ),
    );
  }
}


class Drawerexample extends StatefulWidget {
  final String title;
  const Drawerexample({Key key, this.title}) : super(key: key);
  
  @override
  _DrawerexampleState createState() => _DrawerexampleState();
}

class _DrawerexampleState extends State<Drawerexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('drawer demo')),
      body: Center(child: Text('my pages'),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('drawer header'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('item1'),
              onTap: (){
                final snackBar=SnackBar(content: Text('item 1 clicked'),);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('item2'),
              onTap: (){
                final snackBar=SnackBar(content: Text('item 1 clicked'),
                action: SnackBarAction(
                  label: 'undo',
                  onPressed: (){},
                ),);

                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
