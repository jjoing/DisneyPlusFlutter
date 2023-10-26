import 'package:flutter/material.dart';
import 'package:disney_plus/Contents.dart';

Container PosterList(List imagePath){
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
    height: 160.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      itemCount: imagePath.length,
      itemBuilder: (context, index){
        return Container(
          margin: const EdgeInsets.only(left: 15),
          width: 120,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(children:[
            Image.asset('${imagePath[index]}'),
          ]));
    }));
}