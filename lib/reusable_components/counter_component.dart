



// ignore_for_file: use_key_in_widget_constructors, must_be_immutable



import 'package:flutter/material.dart';

class CounterComponent extends StatelessWidget {
   
   int counter ;
   Function () subOne ;
   Function () addOne ;
   
   CounterComponent({required this.counter , required this.subOne , required this.addOne});

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Color.fromARGB(255, 127, 69, 30).withOpacity(0.4) , 
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [ 
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                         children: [
                           InkWell(
                            onTap:addOne ,
                             child: Container( 
                              width: 70 ,
                              height: 35 ,
                              decoration: BoxDecoration( color: Colors.green , borderRadius: BorderRadius.circular(15)),
                              child: const Icon(Icons.add),
                              ),
                           ),
                           Text('$counter' , style: const TextStyle( color: Colors.black , fontSize: 30   ) ),

                           InkWell(
                            onTap: subOne,
                             child: Container( 
                              alignment: Alignment.center,
                              width: 70 ,
                              height: 35 ,
                              decoration: BoxDecoration( color: Colors.green , borderRadius: BorderRadius.circular(15)),
                              child: const Icon(Icons.remove),
                              ),
                           ),
                         ],
                       ),
                        
                     ],
                  ),
            ),
      ),
    );
  }
}
