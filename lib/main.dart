import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:disney_plus/MainScreen.dart';
import 'package:disney_plus/Contents.dart';


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

