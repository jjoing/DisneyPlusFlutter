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
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(children:[
            Expanded(child: Image.asset('${imagePath[index]}')),
          ]));
    }));
}

Container CollectionList(List imagePath1, imagePath2){
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
      height: 500,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.zero,
          itemCount: imagePath1.length,
          itemBuilder: (context, index){
            return Container(
              child: Row(
                children: [
                Container(
                  margin: const EdgeInsets.only(left: 15, bottom: 20),
                  width: MediaQuery.of(context).size.width * 0.42,
                  height: MediaQuery.of(context).size.width * 0.56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(children:[
                    Expanded(child: Image.asset('${imagePath1[index]}')),
                ])),
                Container(
                  margin: const EdgeInsets.only(left: 15, bottom: 20),
                  width: MediaQuery.of(context).size.width * 0.42,
                  height: MediaQuery.of(context).size.width * 0.56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children:[
                    Expanded(child: Image.asset('${imagePath2[index]}')),
                  ]))
                ]
              ),
            );
          }));
}