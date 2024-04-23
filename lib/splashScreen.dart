import 'dart:async';
import 'package:e_com_app/home/HomeScreen/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2 ), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 832,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white10,
                    Colors.white12,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Container(
                height: 400,
                width: 400,

                  child:Image.asset('assets/img/Adidas.png'),),


            ),
          ],
        ),
      ),
    );
  }
}