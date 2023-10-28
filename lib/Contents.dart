import 'package:flutter/material.dart';
import 'package:disney_plus/PosterList.dart';

const List<String> Categorie = [
  'assets/images/disney_white_logo.png',
  'assets/images/pixar_logo.png',
  'assets/images/marvel_logo.png',
];
const List<String> Categorie2 = [
  'assets/images/starwars_logo.png',
  'assets/images/ng_logo.png',
  'assets/images/star_logo.png',
];

const List<String> sliderList = [
  'assets/images/frozen_poster.jpg',
  'assets/images/moving_poster.png',
  'assets/images/toyStroy4_slider.jpg',
  'assets/images/marvel_slider.png',
  'assets/images/beautyBeast_slider.png',
];

const List<String> collection = [
  'assets/images/korea_poster1.png',
  'assets/images/korea_poster2.png',
];

const List<String> collection2 = [
  'assets/images/new_poster1.png',
  'assets/images/new_poster2.png',
];

class information {
  String imagepath;
  String keyword;
  String describe;
  information(this.imagepath, this.keyword, this.describe);

  information.fromMap(Map)
      : this.imagepath = Map['imagepath'],
        this.keyword = Map['keyword'],
        this.describe = Map['describe'];
}

information korea_poster1 = information.fromMap({
  'imagepath' : 'assets/images/korea_poster1.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티', });

information korea_poster2 = information.fromMap({
  'imagepath' : 'assets/images/korea_poster2.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티', });

information korea_poster3 = information.fromMap({
  'imagepath' : 'assets/images/korea_poster3.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티', });


information new_poster1 = information.fromMap({
  'imagepath' : 'assets/images/new_poster1.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티', });

information new_poster2 = information.fromMap({
  'imagepath' : 'assets/images/new_poster2.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티', });

information new_poster3 = information.fromMap({
  'imagepath' : 'assets/images/korea_poster1.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티', });


final List<String> korPoster = [
  korea_poster1.imagepath,
  korea_poster2.imagepath,
  korea_poster3.imagepath,
];

final List<String> newPoster = [
  new_poster1.imagepath,
  new_poster2.imagepath,
  new_poster3.imagepath,
];