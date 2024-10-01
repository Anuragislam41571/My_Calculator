import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main (){
  
  
  
  runApp(myapp());
  
  
  
  
  
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
      theme: ThemeData(

        elevatedButtonTheme: ElevatedButtonThemeData(
          

          style: ElevatedButton.styleFrom(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
                  side: BorderSide(width: 1,color: Colors.black)
            ),
foregroundColor: Colors.white,
            backgroundColor: Colors.brown
          )

        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900
          )

        ),

        inputDecorationTheme: InputDecorationTheme(

          focusedBorder: OutlineInputBorder(

            borderSide: BorderSide(
              width: 3,color: Colors.brown
            ),



          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: Colors.blue)

          )

        )

      ),
      
    );
  }
}

