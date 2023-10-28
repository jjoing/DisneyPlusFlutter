import 'package:flutter/material.dart';
import 'package:disney_plus/Contents.dart';
import 'package:disney_plus/MainScreen.dart';


class movieInfo extends StatelessWidget {
  const movieInfo({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(color: Color(0xff1a1d29)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.5,
                  child: Image.asset(imagePath, fit: BoxFit.fitWidth)
                ),
                Container(

                ),
                

          ]),
        )
    ),
      ));
  }
}
