import 'package:flutter/material.dart';

void main()=>runApp(animation3());

class animation3 extends StatefulWidget {
  @override
  _animation3State createState() => _animation3State();
}

class _animation3State extends State<animation3> {
  @override
  Widget build(BuildContext context) {
   final apptitle='opacity demo';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: apptitle,
      home: MyHomePage(title: apptitle),
    );
  }
}
 class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key key, this.title}) : super(key: key);
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }

 class _MyHomePageState extends State<MyHomePage> {
  bool _visible=true;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
       ),
       body: Center(
         child: AnimatedOpacity(
           opacity: _visible?1.0:0.0,
           duration: Duration(milliseconds: 500),
           child: Container(
             width: 200.0,
             height: 200.0,
             color: Colors.green,
           ),
         ),
       ),
         floatingActionButton: FloatingActionButton(
           onPressed: (){
             setState(() {
               _visible=!_visible;
             });
           },
           tooltip: 'Toggle opacity',
           child: Icon(Icons.flip),
         ),
     );

   }
 }
