import 'package:flutter/material.dart';
import 'package:disney_plus/PosterList.dart';
import 'package:disney_plus/Contents.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.search, color: Colors.black),
                  SizedBox(width: 20),
                  Text(
                    '검색',
                    style: TextStyle(fontSize: 20),
            )])),
            SizedBox(height:30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff19132f).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.white, size: 30.0),
                      SizedBox(width: 10),
                      Text(
                        '오리지널',
                        style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.8)),
                      )
                ])),
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff19132f).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.movie, color: Colors.white, size: 30.0),
                      SizedBox(width: 10),
                      Text(
                        '영화',
                        style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.8)),
                      )
                ])),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff19132f).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.live_tv, color: Colors.white, size: 30.0),
                      SizedBox(width: 10),
                      Text(
                        '시리즈',
                        style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.8)),
                      )
                ])),
            ]),
            SizedBox(height: 25),
            Container(
              margin: const EdgeInsets.only(left: 30.0, top: 10.0,),
              alignment: Alignment.centerLeft,
              child: Text("컬렉션 둘러보기",
                style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold,)
            )),
            Container(child: CollectionList(collection, collection2))
    ])));
}}

