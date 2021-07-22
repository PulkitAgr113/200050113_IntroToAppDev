import 'package:flutter/material.dart';

class FriendsQuestions extends StatelessWidget {

  String _ques = '';

  final List<String> _questions = [
    'The series Friends is set in which city?',
    'What pet did Ross own?',
    'What is Monica skilled at?',
    'Monica briefly dates billionaire Pete Becker. Which country does he take her for their first date?',
    'Rachel was popular in high school. Her prom date Chip ditched her for which girl at school?',
    'What’s the name of the 1950s-themed diner where Monica worked as a waitress?',
    'What’s the name of Joey’s penguin?',
    'Which cartoon character was on Phoebe’s thermos that Ursula threw under a bus?',
    'What’s the name of Janice’s first husband?',
    'What song is Phoebe best known for?',
    'What job does Ross have?',
    'What does Joey never share?',
    'What is Chandler’s middle name?',
    'Which Friends character plays Dr. Drake Ramoray on the show Days Of Our Lives?',
    'Who was Chandler’s TV magazine always addressed to?',
    'What is Janice most likely to say?',
    'What’s the name of the grumpy person who works at the coffee shop?',
    'Who sang the Friends theme?',
    'What kind of uniform does Joey wear to Monica and Chandler’s wedding?',
    'What are Ross and Monica’s parents called?',
    'What is the name of Phoebe’s alter-ego?',
    'What is the name of Rachel’s Sphynx cat?',
    'When Ross and Rachel were“on a break,”Ross slept with Chloe. Where does she work?',
    'Chandler’s mom had an interesting career and even more interesting love life. What’s her name?',
    'Monica pursued her career as a chef because Chandler complimented her on which dish?',
  ];

  FriendsQuestions(index) {
    _ques = _questions[index];
  }

  String getQuestion() {
    return _ques;
  }

  @override
  Widget build(BuildContext context) { return MaterialApp();}
}