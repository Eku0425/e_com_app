import 'package:e_com_app/home/CartScreen/cartScreen.dart';
import 'package:e_com_app/home/DetailScreen/detailScreen.dart';
import 'package:e_com_app/home/HomeScreen/homepage.dart';
import 'package:e_com_app/splashScreen.dart';
import 'package:flutter/material.dart';


void main()
{
   runApp(
     const MyApp(),
   );
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
        debugShowCheckedModeBanner: false,
       initialRoute: '/',
       routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => HomeScreen(),
         '/detail': (context) => DetailPage(),
         '/cart': (context) => cartScreen(),
       },
     );
   }
 }
