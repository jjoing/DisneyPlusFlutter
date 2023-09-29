import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> sliderList = [
  'assets/images/frozen_poster.jpg',
  'assets/images/moving_poster.png',
  'assets/images/toyStroy4_slider.jpg',
  'assets/images/marvel_slider.png',
  'assets/images/beautyBeast_slider.png',
];

Container PosterList(String imagePath){
  return Container(
    margin: const EdgeInsets.only(left: 15),
    width: 120,
    height: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Image.asset(imagePath)
  );
}

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 5000,
            splash: Image.asset('assets/images/disney_plus_start.gif'),
            splashIconSize: double.maxFinite,
            nextScreen: disneyHome(),
            splashTransition: SplashTransition.fadeTransition,
            //pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.black));
  }
}

class disneyHome extends StatefulWidget {
  @override
  State<disneyHome> createState() => _disneyHomeState();
}

class _disneyHomeState extends State<disneyHome> {
 //disneyHomeState({super.key});

 int _selectedIndex = 0;
 List _pages = <Widget>[Home(), Text('Search'), Text('Download'), Text('Profile')];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Image.asset('assets/images/disney_plus_logo.png', width: 200, height: 50, ),
         backgroundColor: Color(0xff2d3045),
       ),
       body: SafeArea(
         child: _pages[_selectedIndex],
         ),
         bottomNavigationBar: BottomNavigationBar(
         selectedItemColor: Colors.white,
         unselectedItemColor: Colors.grey,
           showSelectedLabels: false,
           showUnselectedLabels: false,

         onTap: _onItemTapped,
         currentIndex: _selectedIndex,
         items: [
           const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Color(0xff1a1d29)),
           const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
           const BottomNavigationBarItem(icon: Icon(Icons.download), label: 'Download'),
           const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Profile'),
         ],
        ),
      ),
    );
  }

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
}

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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
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
                        child: Image.asset('assets/images/disney_white_logo.png',
                        )
                      ),
                    )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
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
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Image.asset('assets/images/pixar_logo.png'),),
                    )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
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
                        width: MediaQuery.of(context).size.width * 0.12,
                        height: MediaQuery.of(context).size.width * 0.08,
                        child: Image.asset('assets/images/marvel_logo.png'),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: MediaQuery.of(context).size.width * 0.15,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
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
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.width * 0.12,
                        child: Image.asset('assets/images/starwars_logo.png'),),
                      )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
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
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.width * 0.12,
                        child: Image.asset('assets/images/ng_logo.png'),),
                      )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
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
                        width: MediaQuery.of(context).size.width * 0.14,
                        height: MediaQuery.of(context).size.width * 0.09,
                        child: Image.asset('assets/images/star_logo.png'),),
                      )
                  ),
                ],
              ),
            ),

            // poster list
            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 20.0,),
              alignment: Alignment.centerLeft, // Align however you like (i.e .centerRight, centerLeft)
              child: Text("주목할 만한 한국 콘텐츠",
                  style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold,)
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
              height: 160.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  PosterList('assets/images/korea_poster1.png'),
                  PosterList('assets/images/korea_poster2.png'),
                  PosterList('assets/images/korea_poster3.png'),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 5.0,),
              alignment: Alignment.centerLeft, // Align however you like (i.e .centerRight, centerLeft)
              child: Text("디즈니+ 최신작",
                  style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold,)
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
              height: 160.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  PosterList('assets/images/new_poster1.png'),
                  PosterList('assets/images/new_poster2.png'),
                  PosterList('assets/images/korea_poster1.png'),
                ],
              ),
            ),

          ]
        )
      ),
    );
  }
}
