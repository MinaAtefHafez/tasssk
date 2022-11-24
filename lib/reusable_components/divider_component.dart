

// ignore_for_file: use_key_in_widget_constructors, must_be_immutable



import 'package:flutter/material.dart';

class DividerComponent extends StatelessWidget {
   
   int counter ;
   int dividerNumber = 6 ;
   int dividerResult = 0 ;
   DividerComponent({required this.counter});

  @override
  Widget build(BuildContext context) {
    double dividerResult = dividerNumber / counter ;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Color.fromARGB(255, 127, 69, 30).withOpacity(0.4)  , 
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [ 
                       Center(
                        child: Text('$dividerNumber / $counter' , style: const TextStyle( color: Colors.black , fontSize: 30   ) )),
                       Container( 
                        alignment: Alignment.center,
                        height: 65 ,
                        width: 90 ,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17) ,
                            color: Colors.blue.withOpacity(0.3) 
                           ),
                           child: Text( dividerResult.toStringAsFixed(2) , style:  TextStyle( color: Colors.black.withOpacity(0.4), fontSize: 22   ), ),
                        ), 
                     ],
                  ),
            ),
      ),
    );
  }
}
