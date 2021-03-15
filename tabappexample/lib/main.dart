import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(tabappdemo());

class tabappdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Text("drawer header"),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
                ListTile(
                  title: Text('item0'),
                  onTap: (){

                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('item1'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('item2'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('item3'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('item4'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('item5'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('item6'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('item7'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('item8'),
                  onTap: (){},
                ),
              ],
            ),
          ),


        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon:Icon(Icons.directions_bus)),
              Tab(icon:Icon(Icons.directions_run)),
              Tab(icon:Icon(Icons.directions_bike)),
            ],
          ),
        ),
            body: TabBarView(
              children: [
                Icon(Icons.directions_bus),
                Icon(Icons.directions_run),
                Icon(Icons.directions_bike),
              ],
            ),

        ),
      ),
    );

  }

}