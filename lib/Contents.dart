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

const List<String> profileList = [
  'assets/images/profile1.png',
  'assets/images/profile2.png',
  'assets/images/profile3.png',
];

const List<String> profileMenu = [
  '관심 콘텐츠',
  '앱 설정',
  '계정',
  '법률센터',
  '고객센터',
  '로그아웃',
];

class information {
  final String title;
  final String imagepath;
  final String keyword;
  final String describe;
  final String URL;
  information(this.title, this.imagepath, this.keyword, this.describe, this.URL);

  information.fromMap(Map)
      : this.title = Map['title'],
        this.imagepath = Map['imagepath'],
        this.keyword = Map['keyword'],
        this.describe = Map['describe'],
        this.URL = Map['URL'];
}

information korea_poster1 = information.fromMap({
  'title' : '엘리멘탈',
  'imagepath' : 'assets/images/korea_poster1.png',
  'keyword' : '2023 . 1시간 41분 . 로맨스, 가족, 코미디, 판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티, 불의 여자가 물의 남자를 만난다. 원소끼리 섞이면 안 되지만, 그래도 난 네가 좋아!',
  'URL' : 'https://www.youtube.com/watch?v=BOqFRHCrN-k', });

information korea_poster2 = information.fromMap({
  'title' : '엘리멘탈',
  'imagepath' : 'assets/images/korea_poster2.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티',
  'URL' : 'www.youtube.com', });

information korea_poster3 = information.fromMap({
  'title' : '엘리멘탈',
  'imagepath' : 'assets/images/korea_poster3.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티',
  'URL' : 'www.youtube.com', });


information new_poster1 = information.fromMap({
  'title' : '엘리멘탈',
  'imagepath' : 'assets/images/new_poster1.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티',
  'URL' : 'www.youtube.com', });

information new_poster2 = information.fromMap({
  'title' : '엘리멘탈',
  'imagepath' : 'assets/images/new_poster2.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티',
  'URL' : 'www.youtube.com', });

information new_poster3 = information.fromMap({
  'title' : '엘리멘탈',
  'imagepath' : 'assets/images/korea_poster1.png',
  'keyword' : '2023 1시간 41분 로맨스,가족,코미디,판타지, 애니메이션',
  'describe' : '4원소가 사는 엘리멘트 시티',
  'URL' : 'www.youtube.com', });

final List<dynamic> Movie = [
  korea_poster1,
  korea_poster2,
  korea_poster3,
  new_poster1,
  new_poster2,
  new_poster3,
];

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

final List<String> korKeyword = [
  korea_poster1.keyword,
  korea_poster2.keyword,
  korea_poster3.keyword,
];

final List<String> korDescribe = [
  korea_poster1.describe,
  korea_poster2.describe,
  korea_poster3.describe,
];

final List<String> korURL = [
  korea_poster1.URL,
  korea_poster2.URL,
  korea_poster3.URL,
];