import 'package:flutter/material.dart';
import 'package:disney_plus/Contents.dart';
import 'package:disney_plus/MainScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


class movieInfo extends StatelessWidget {
  const movieInfo({super.key, required this.imagePath, required this.index});

  final String imagePath;
  final int index;

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
                  height: MediaQuery.of(context).size.height*0.7,
                  child: Image.asset(imagePath, fit: BoxFit.fitWidth)
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Text('${korKeyword[index]}', style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.8),), textAlign: TextAlign.center,)
                ),
                SizedBox(height: 10),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton.icon(
                    label: Text('재생  ', style: TextStyle(fontSize: 20, letterSpacing: 10.0, fontWeight: FontWeight.bold, color: Colors.black)),
                    icon: Icon(Icons.play_arrow, color: Colors.black),
                    onPressed: () => {},
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [IconButton(
                          icon: Icon(Icons.add, color: Colors.white),
                          onPressed: () => {},
                        ),
                        Text('관심 콘텐츠', style: TextStyle(fontSize: 13, color: Colors.white),)
                      ]),
                      SizedBox(width: 35),
                      Column(children: [IconButton(
                        icon: Icon(Icons.theaters, color: Colors.white),
                        onPressed: () {
                          launchUrlString('https://www.youtube.com/watch?v=BOqFRHCrN-k');
                        },
                      ),
                        Text('예고편', style: TextStyle(fontSize: 13, color: Colors.white),)
                      ]),
                      SizedBox(width: 35),
                      Column(children: [IconButton(
                        icon: Icon(Icons.security_update_good, color: Colors.white),
                        onPressed: () async{
                          final List<String> downloadList = [

                          ];
                        },
                      ),
                        Text('저장', style: TextStyle(fontSize: 13, color: Colors.white),)
                      ])
                    ],
                  )
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text('${korDescribe[index]}', style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.8)),)
                ),
                SizedBox(height: 20),

          ]),
        )
    ),
      ));
  }
}
