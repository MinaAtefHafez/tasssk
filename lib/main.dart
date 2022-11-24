// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:tasssk/reusable_components/counter_component.dart';
import 'package:tasssk/reusable_components/divider_component.dart';
import 'package:tasssk/reusable_components/multiplier_component.dart';
import 'package:tasssk/reusable_components/subtraction_component.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <Color> gradientList = [
                    Colors.grey.withOpacity(0.5),
                    Colors.pink.withOpacity(0.5) ,
                    Colors.deepPurple.withOpacity(0.5)
                  ] ;
      int counter = 7 ;   



  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
        home: SafeArea(
          child: Scaffold(
            body: Stack(
              children:[ 
                Container(
                decoration: BoxDecoration(
                   gradient: LinearGradient(
                    colors: gradientList ,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                    ),
                ),
              ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MultiplierComponent(counter: counter, ),
                    SubtractionComponent( counter: counter,),
                    DividerComponent (counter: counter, ),
                    CounterComponent (counter: counter,
                      addOne: (){
                        counter ++ ;
                        setState(() {});
                      } ,
                      subOne: () {
                        counter -- ;
                        setState(() {}); 
                      } ,
                     ),
                  ],
                ),
              ],
            ),
          )
          ) ,
    );
  }
}

