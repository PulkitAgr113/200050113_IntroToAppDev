import 'package:flutter/material.dart';

class FriendsAnswers extends StatelessWidget {

  String _optionA = '';
  String _optionB = '';
  String _optionC = '';
  String _optionD = '';
  int _answerIndex = 0;

  final List<String> _a = [
    'Los Angeles',
    'A dog named Keith',
    'Bricklaying',
    'France',
    'Sally Roberts',
    'Marilyn & Audrey',
    'Snowflake',
    'Pebbles Flintstone',
    'Gary Litman',
    'Smelly Cat',
    'Paleontologist',
    'His books',
    'Muriel',
    'Ross Geller',
    'Chanandler Bong',
    'Talk to the hand!',
    'Herman',
    'The Banksys',
    'Chef',
    'Jack and Jill',
    'Phoebe Neeby',
    'Baldy',
    'Xerox',
    'Priscilla Mae Galway',
    'Green bean casserole',
  ];

  final List<String> _b = [
    'New York City',
    'A rabbit called Lancelot',
    'Cooking',
    'Italy',
    'Amy Welsh',
    'Twilight Galaxy',
    'Waddle',
    'Yogi Bear',
    'Sid Goralnik',
    'Smelly Dog',
    'Artist',
    'His information',
    'Jason',
    'Pete Becker',
    'Chanandler Bang',
    'Get me a coffee!',
    'Gunther',
    'The Rembrandts',
    'Soldier',
    'Philip and Holly',
    'Monica Bing',
    'Mrs. Whiskerson',
    'Microsoft',
    'Nora Tyler Bing',
    'Meatloaf',
  ];

  final List<String> _c = [
    'Miami',
    'A monkey named Marcel',
    'American football',
    'England',
    'Valerie Thompson',
    'Moondance Diner',
    'Huggsy',
    'Judy Jetson',
    'Rob Bailystock',
    'Smelly Rabbit',
    'Photographer',
    'His food',
    'Kim',
    'Eddie Menuek',
    'Chanandler Bing',
    'Oh… my… God!',
    'Frasier',
    'The Constables',
    'Fire fighter',
    'Jack and Judy',
    'Regina Phalange',
    'Sid',
    'Domino’s',
    'Mary Jane Blaese',
    'Stuffing',
  ];

  final List<String> _d = [
    'Seattle',
    'A lizard named Alistair',
    'Singing',
    'Greece',
    'Emily Foster',
    'Marvin’s',
    'Bobber',
    'Bullwinkle',
    'Nick Layster',
    'Smelly Worm',
    'Insurance salesman',
    'His DVDs',
    'Zachary',
    'Joey Tribbiani',
    'Chanandler Beng',
    'No way!',
    'Eddie',
    'The Da Vinci Band',
    'A baseball player',
    'Margaret and Peter',
    'Elaine Benes',
    'Felix',
    'Bank of America',
    'Jessica Grace Carter',
    'Macaroni and cheese',
  ];

  final List<int> _option = [
    2,
    3,
    2,
    2,
    2,
    3,
    3,
    3,
    1,
    1,
    1,
    3,
    1,
    4,
    1,
    3,
    2,
    2,
    2,
    3,
    3,
    2,
    1,
    2,
    4,
  ];

  FriendsAnswers(index) {
    _optionA = _a[index];
    _optionB = _b[index];
    _optionC = _c[index];
    _optionD = _d[index];
    _answerIndex = _option[index];
  }

  String getA() {
    return _optionA;
  }

  String getB() {
    return _optionB;
  }

  String getC() {
    return _optionC;
  }

  String getD() {
    return _optionD;
  }

  int getAnswer() {
    return _answerIndex;
  }

  @override
  Widget build(BuildContext context) { return MaterialApp(); }
}
