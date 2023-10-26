import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:disney_plus/Contents.dart';
import 'package:disney_plus/PosterList.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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

            // 슬라이더 포스터
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
              ),
              items: sliderList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(i, fit: BoxFit.cover),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // 카테고리 블럭 6개
            Container(
              height: MediaQuery.of(context).size.width * 0.15,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index){
                  return Container(
                    //width: MediaQuery.of(context).size.width * 0.28,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: Row(
                      children:[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            stops: [0.0, 1.0],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [Color(0xff364365), Color(0xff1a1d29)],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.16,
                            height: MediaQuery.of(context).size.width * 0.1,
                            child: Image.asset('${Categorie[index]}'),
                        ))),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.015),
                    ]));
                })),
            SizedBox(height: 5),
            Container(
              height: MediaQuery.of(context).size.width * 0.15,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index){
                  return Container(
                    //width: MediaQuery.of(context).size.width * 0.28,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: Row(
                      children:[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              stops: [0.0, 1.0],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [Color(0xff364365), Color(0xff1a1d29)],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.16,
                              height: MediaQuery.of(context).size.width * 0.1,
                              child: Image.asset('${Categorie2[index]}'),
                        ))),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.015),
                ]));
            })),

            // poster list
            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 20.0,),
              alignment: Alignment.centerLeft, // Align however you like (i.e .centerRight, centerLeft)
              child: Text("주목할 만한 한국 콘텐츠",
                style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold,)
            )),
            Container(child: PosterList(korPoster)),

            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 10.0,),
              alignment: Alignment.centerLeft, // Align however you like (i.e .centerRight, centerLeft)
              child: Text("디즈니+ 최신작",
                style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold,)
            )),
            Container(child: PosterList(newPoster)),
          ]
        )
      ),
    );
  }
}
