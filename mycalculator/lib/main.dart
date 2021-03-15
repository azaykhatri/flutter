import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:mycalculator/button.dart';



void main() => runApp(MyApp());

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
 class HomePage extends StatefulWidget {
   @override
   _HomePageState createState() => _HomePageState();
 }

 class _HomePageState extends State<HomePage> {
  var userQuestion='';
  var userAnswer='';

  final myTextSytle=TextStyle(fontSize: 30, color: Colors.deepPurple[900]);
  final List<String> buttons=[
    'C','Del','%','/',
    '7','8','9','x',
    '6','5','4','-',
    '3','2','1','+',
    '0','.','Ans','='
  ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.deepPurple[100],
       body: Column(
         children: <Widget>[
           Expanded(
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Container(
                     padding: EdgeInsets.all(20),
                       alignment:Alignment.centerLeft,
                       child: Text(userQuestion, style: TextStyle(fontSize:20),),


                   ),
                   Container(
                     padding: EdgeInsets.all(20),
                     alignment: Alignment.centerRight,
                       child: Text(userAnswer,style:TextStyle(fontSize:20),),
                   ),
                 ],

               )
             ),
           ),
           Expanded(
             flex:2,
             child: Container(
                 child: GridView.builder(
                 itemCount: buttons.length,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                     itemBuilder:( BuildContext context,int index){


                   if(index==0){
                     // Clear button
                     return MyButton(
                       buttonTapped: (){
                         setState(() {
                           userQuestion='';
                         });
                       },
                       buttontext: buttons[index],
                     color: Colors.green,
                     textcolor: Colors.white,
                     );

                     // Delete button
                  } else if(index==1) {
                     return MyButton(  buttonTapped: (){
                       setState(() {
                         userQuestion=userQuestion.substring(0,userQuestion.length-1);
                       });
                     },

                       buttontext: buttons[index],
                          color: Colors.red,
                         textcolor: Colors.white,
                         );
                   }
                    //equal button
                   else if(index==buttons.length-1) {
                     return MyButton(
                       buttonTapped: (){
                          setState(() {
                            equalPressed();
                       });
                     },
                       buttontext: buttons[index],
                       color: Colors.deepPurple,
                       textcolor: Colors.white,
                     );
                   }
                   // Rest other button
                   else{
                     return MyButton(
                       buttonTapped:(){
                         setState(() {
                           userQuestion +=buttons[index];
                         });
                       } ,
                       buttontext: buttons[index],
                       color: isOperator(buttons[index])?Colors.deepPurple: Colors.deepPurple[50],
                       textcolor: isOperator(buttons[index])?Colors.white:Colors.deepPurple,
                     );
                   }
                 },
                   ),
                 ),
             ),


         ],

       ),

     );
   }
   bool isOperator(String x) {
     if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
       return true;
     }
     return false;
   }
   void equalPressed(){
     String finalQuestion=userQuestion;
     finalQuestion =finalQuestion.replaceAll('x','*');
     Parser p= Parser();
     Expression exp=p.parse(finalQuestion);
     ContextModel Cm =ContextModel();
     double eval =exp.evaluate(EvaluationType.REAL, Cm);
     userAnswer = eval.toString();

   }
   }
