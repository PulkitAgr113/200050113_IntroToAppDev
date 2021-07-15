import 'package:flutter/material.dart';

class HPQuestions extends StatelessWidget {

  String _ques = '';

  final List<String> _questions = [
    'What spell did Harry use to kill Lord Voldemort?',
    'At the first meeting of the Duelling Club, Draco Malfoy summoned what animal with the spell ‘Serpensortia’?',
    'The ‘Felifors’ spell turns a cat into a what?',
    'Gilderoy Lockhart tried to use ‘Brackium Emendo’ to fix Harry’s broken bones. What did it actually do to him?',
    'Which Patronus belongs to Luna Lovegood?',
    'Who wrote the 7-book series titled ‘The Standard Book of Spells’?',
    'Which element is associated with Hufflepuff?',
    'Who was Gryffindor’s Quidditch-obsessed keeper between 1987 and 1994?',
    '‘Wit beyond measure is man’s greatest treasure’ is the motto of which house?',
    'What was the name of the Black family’s house elf?',
    'What is a thestral?',
    'When unearthed, a mandrake will do what?',
    'Cedric Diggory faced what breed of dragon in the Triwizard Tournament?',
    'The tears of which animal are the only known antidote to basilisk venom?',
    'What position does Harry play on his Quidditch team?',
    'Who knocks out the troll in the ladies’ bathroom in Harry Potter and the Philosopher’s Stone?',
    'Who poses as Mad-Eye Moody, Harry’s 4th year Defense Against the Dark Arts professor?',
    'Albus Dumbledore destroyed which Horcrux?',
    'What magical talent does Harry share with Voldemort?',
    'Who saved a centaur from being strangled by Professor Umbridge in the Forbidden Forest?',
    'Finish the inscription on Dobby’s tombstone: ‘Here lies Dobby…',
    'What was the name of the joke shop founded by the Weasley twins at 93 Diagon Alley?',
  ];

  HPQuestions(index) {
    _ques = _questions[index];
  }

  String getQuestion() {
    return _ques;
  }

  @override
  Widget build(BuildContext context) { return MaterialApp();}
}