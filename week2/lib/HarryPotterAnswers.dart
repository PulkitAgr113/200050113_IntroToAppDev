import 'package:flutter/material.dart';

class HPAnswers extends StatelessWidget {

  String _optionA = '';
  String _optionB = '';
  String _optionC = '';
  String _optionD = '';
  int _answerIndex = 0;

  final List<String> _a = [
    'Expelliarmus',
    'Frog',
    'Hat',
    'Turned his leg wooden',
    'Doe',
    'Kennilworthy Whisp',
    'Fire',
    'Katie Bell',
    'Gryffindor',
    'Dobby',
    'A half-giant',
    'Dance',
    'Swedish Short-Snout',
    'Phoenix',
    'Chaser',
    'Harry',
    'Voldemort',
    'Slytherin’s locket',
    'Being an Animagus',
    'Grawp',
    '‘A true friend’',
    'Weasley’s Witchcraft Wonders',
  ];

  final List<String> _b = [
    'Expecto Patronum',
    'Snake',
    'Bat',
    'Removed his bones entirely',
    'Rabbit',
    'Rita Skeeter',
    'Earth',
    'Oliver Wood',
    'Hufflepuff',
    'Winky',
    'An invisible winged horse',
    'Burp',
    'Peruvian Vipertooth',
    'Billywig',
    'Keeper',
    'Ron',
    'Peter Pettigrew',
    'Nagini',
    'Being a Parselmouth',
    'Buckbeak',
    '‘The best servant’',
    'Weasley’s Worldwide Whompers',
  ];

  final List<String> _c = [
    'Avada Kedavra',
    'Dragon',
    'Matchbox',
    'Forced him to speak Parseltongue',
    'Dog',
    'Bathilda Bagshot',
    'Air',
    'Charlie Weasley',
    'Ravenclaw',
    'Kreacher',
    'A shrunken head',
    'Scream',
    'Common Welsh Green',
    'Hippogriff',
    'Bludger',
    'Hermione',
    'Barty Crouch Jr.',
    'Hufflepuff’s cup',
    'Being an Auror',
    'Hagrid',
    '‘A free Elf’',
    'Weasley’s Wicked Whatsits',
  ];

  final List<String> _d = [
    'Accio',
    'Bear',
    'Cauldron',
    'Gave him an exquisite singing voice',
    'Horse',
    'Miranda Goshawk',
    'Water',
    'Angelina Johnson',
    'Slytherin',
    'Hokey',
    'A pixie',
    'Laugh',
    'Norwegian Ridgeback',
    'Boggart',
    'Seeker',
    'Snape',
    'Sirius Black',
    'Marvolo Gaunt’s ring',
    'Being a Death Eater',
    'Luna',
    '‘Master of socks’',
    'Weasley’s Wizard Wheezes',
  ];

  final List<int> _option = [
    1,
    2,
    4,
    2,
    2,
    4,
    2,
    2,
    3,
    3,
    2,
    3,
    1,
    1,
    4,
    2,
    3,
    4,
    2,
    1,
    3,
    4,
  ];

  HPAnswers(index) {
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
