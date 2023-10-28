import 'package:flutter/material.dart';
import 'package:disney_plus/PosterList.dart';
import 'package:disney_plus/Contents.dart';
import 'package:disney_plus/movieInfo.dart';

Container downloadList(List imagePath){
  return Container(
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: imagePath.length,
      itemBuilder: (context, index){
        Row(children: [
          Container(
            margin: const EdgeInsets.only(left: 15, bottom: 20),
            height: MediaQuery.of(context).size.width * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Image.asset('assets/images/new_poster1.png', fit: BoxFit.fitWidth,),
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text('title',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,)
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text('describe',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                          textAlign: TextAlign.left,)
                    ),
                  ],
                ),
                SizedBox(width: 15,),
                Icon(Icons.security_update_good, size: 30, color: Colors.white,),
              ],
            ),
          ),
        ]);},
    )
  );
}


class download extends StatelessWidget {
  const download({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.0, 1.0],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [Color(0xff2d3045), Color(0xff1a1d29)]
        ),
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 20),
            width: MediaQuery.of(context).size.width,
            child: Text(
              '저장한 콘텐츠',
              style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            )
          ),
          SizedBox(height: 15),
          Container(
          ),
        ]),
      ),
    );
  }
}
