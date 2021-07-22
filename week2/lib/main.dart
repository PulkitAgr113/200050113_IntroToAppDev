import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HarryPotterQuestions.dart';
import 'HarryPotterAnswers.dart';
import 'FriendsQuestions.dart';
import 'FriendsAnswers.dart';

void main() => runApp(Quiz());

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  int hpIndex = 0;
  int friendsIndex = 0;
  int index = 0;
  double percent = 0;
  var ques = HPQuestions(0).getQuestion();
  var optionA = HPAnswers(0).getA();
  var optionB = HPAnswers(0).getB();
  var optionC = HPAnswers(0).getC();
  var optionD = HPAnswers(0).getD();
  bool? markedA = false;
  bool? markedB = false;
  bool? markedC = false;
  bool? markedD = false;
  bool result = false;
  int hpQuestions = 22;
  int friendsQuestions = 25;
  var score = 0;
  var title = 'Harry Potter';

  List<Icon> _results = [];

  void _onItemTapped(int selectedIndex) {
    setState((){
      index = selectedIndex;
      _results = [];
      if(selectedIndex == 0) {
        title = 'Harry Potter';
        ques = HPQuestions(0).getQuestion();
        optionA = HPAnswers(0).getA();
        optionB = HPAnswers(0).getB();
        optionC = HPAnswers(0).getC();
        optionD = HPAnswers(0).getD();
        hpIndex = 0;
        score = 0;
        result = false;
      }
      else {
        title = 'Friends';
        ques = FriendsQuestions(0).getQuestion();
        optionA = FriendsAnswers(0).getA();
        optionB = FriendsAnswers(0).getB();
        optionC = FriendsAnswers(0).getC();
        optionD = FriendsAnswers(0).getD();
        friendsIndex = 0;
        score = 0;
        result = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if(!result) {
      if(index == 0) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('$title', style: TextStyle(fontSize: 30)),
              centerTitle: true,
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body: Container(
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$ques',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CheckboxListTile(
                    value: markedA,
                    onChanged: (bool? newMark) {
                      if (HPAnswers(hpIndex).getAnswer() == 1) {
                        score = score + 1;
                        _results.add(Icon(Icons.thumb_up, color: Colors.greenAccent));
                      }
                      else _results.add(Icon(Icons.thumb_down, color: Colors.red));
                      if (hpIndex < hpQuestions) {
                        hpIndex = hpIndex + 1;
                        if (hpIndex == hpQuestions) {
                          hpIndex = 0;
                          percent = score / hpQuestions * 100;
                          percent = ((percent * 100).toInt()).toDouble();
                          percent = percent / 100;
                          result = true;
                          score = 0;
                        }
                        ques = HPQuestions(hpIndex).getQuestion();
                        optionA = HPAnswers(hpIndex).getA();
                        optionB = HPAnswers(hpIndex).getB();
                        optionC = HPAnswers(hpIndex).getC();
                        optionD = HPAnswers(hpIndex).getD();
                      }
                      setState(() {
                        markedA = newMark;
                        markedA = false;
                      });
                    },
                    title: Text(
                      '$optionA',
                      style: TextStyle(color: Colors.blue),
                    ),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    tileColor: Colors.white,
                  ),
                  CheckboxListTile(
                    value: markedB,
                    onChanged: (bool? newMark) {
                      if (HPAnswers(hpIndex).getAnswer() == 2) {
                        score = score + 1;
                        _results.add(Icon(Icons.thumb_up, color: Colors.greenAccent));
                      }
                      else _results.add(Icon(Icons.thumb_down, color: Colors.red));
                      if (hpIndex < hpQuestions) {
                        hpIndex = hpIndex + 1;
                        if (hpIndex == hpQuestions) {
                          hpIndex = 0;
                          percent = score / hpQuestions * 100;
                          percent = ((percent * 100).toInt()).toDouble();
                          percent = percent / 100;
                          result = true;
                          score = 0;
                        }
                        ques = HPQuestions(hpIndex).getQuestion();
                        optionA = HPAnswers(hpIndex).getA();
                        optionB = HPAnswers(hpIndex).getB();
                        optionC = HPAnswers(hpIndex).getC();
                        optionD = HPAnswers(hpIndex).getD();
                      }
                      setState(() {
                        markedB = newMark;
                        markedB = false;
                      });
                    },
                    title: Text(
                      '$optionB',
                      style: TextStyle(color: Colors.blue),
                    ),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    tileColor: Colors.white,
                  ),
                  CheckboxListTile(
                    value: markedC,
                    onChanged: (bool? newMark) {
                      if (HPAnswers(hpIndex).getAnswer() == 3) {
                        score = score + 1;
                        _results.add(Icon(Icons.thumb_up, color: Colors.greenAccent));
                      }
                      else _results.add(Icon(Icons.thumb_down, color: Colors.red));
                      if (hpIndex < hpQuestions) {
                        hpIndex = hpIndex + 1;
                        if (hpIndex == hpQuestions) {
                          hpIndex = 0;
                          percent = score / hpQuestions * 100;
                          percent = ((percent * 100).toInt()).toDouble();
                          percent = percent / 100;
                          result = true;
                          score = 0;
                        }
                          ques = HPQuestions(hpIndex).getQuestion();
                          optionA = HPAnswers(hpIndex).getA();
                          optionB = HPAnswers(hpIndex).getB();
                          optionC = HPAnswers(hpIndex).getC();
                          optionD = HPAnswers(hpIndex).getD();
                      }
                      setState(() {
                        markedC = newMark;
                        markedC = false;
                      });
                    },
                    title: Text(
                      '$optionC',
                      style: TextStyle(color: Colors.blue),
                    ),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    tileColor: Colors.white,
                  ),
                  CheckboxListTile(
                    value: markedD,
                    onChanged: (bool? newMark) {
                      if (HPAnswers(hpIndex).getAnswer() == 4) {
                        score = score + 1;
                        _results.add(Icon(Icons.thumb_up, color: Colors.greenAccent));
                      }
                      else _results.add(Icon(Icons.thumb_down, color: Colors.red));
                      if (hpIndex < hpQuestions) {
                        hpIndex = hpIndex + 1;
                        if (hpIndex == hpQuestions) {
                          hpIndex = 0;
                          percent = score / hpQuestions * 100;
                          percent = ((percent * 100).toInt()).toDouble();
                          percent = percent / 100;
                          result = true;
                          score = 0;
                        }
                        ques = HPQuestions(hpIndex).getQuestion();
                        optionA = HPAnswers(hpIndex).getA();
                        optionB = HPAnswers(hpIndex).getB();
                        optionC = HPAnswers(hpIndex).getC();
                        optionD = HPAnswers(hpIndex).getD();
                      }
                      setState(() {
                        markedD = newMark;
                        markedD = false;
                      });
                    },
                    title: Text(
                      '$optionD',
                      style: TextStyle(color: Colors.blue),
                    ),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    tileColor: Colors.white,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for(var item in _results) item,
                      ],
                    ),
                  ),
                ]
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.green,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Harry Potter',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Friends',
                ),
              ],
              currentIndex: index,
              onTap: _onItemTapped,
              selectedItemColor: Colors.yellowAccent,
            ),
          ),
        );
      }

      else {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('$title', style: TextStyle(fontSize: 30)),
              centerTitle: true,
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body: Container(
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$ques',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CheckboxListTile(
                    value: markedA,
                    onChanged: (bool? newMark) {
                      if (FriendsAnswers(friendsIndex).getAnswer() == 1) {
                        score = score + 1;
                        _results.add(Icon(Icons.thumb_up, color: Colors.greenAccent));
                      }
                      else _results.add(Icon(Icons.thumb_down, color: Colors.red));
                      if (friendsIndex < friendsQuestions) {
                        friendsIndex = friendsIndex + 1;
                        if (friendsIndex == friendsQuestions) {
                          friendsIndex = 0;
                          percent = score / friendsQuestions * 100;
                          percent = ((percent * 100).toInt()).toDouble();
                          percent = percent / 100;
                          result = true;
                          score = 0;
                        }
                        ques = FriendsQuestions(friendsIndex).getQuestion();
                        optionA = FriendsAnswers(friendsIndex).getA();
                        optionB = FriendsAnswers(friendsIndex).getB();
                        optionC = FriendsAnswers(friendsIndex).getC();
                        optionD = FriendsAnswers(friendsIndex).getD();
                      }
                      setState(() {
                        markedA = newMark;
                        markedA = false;
                      });
                    },
                    title: Text(
                      '$optionA',
                      style: TextStyle(color: Colors.blue),
                    ),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    tileColor: Colors.white,
                  ),
                  CheckboxListTile(
                    value: markedB,
                    onChanged: (bool? newMark) {
                      if (FriendsAnswers(friendsIndex).getAnswer() == 2) {
                        score = score + 1;
                        _results.add(Icon(Icons.thumb_up, color: Colors.greenAccent));
                      }
                      else _results.add(Icon(Icons.thumb_down, color: Colors.red));
                      if (friendsIndex < friendsQuestions) {
                        friendsIndex = friendsIndex + 1;
                        if (friendsIndex == friendsQuestions) {
                          friendsIndex = 0;
                          percent = score / friendsQuestions * 100;
                          percent = ((percent * 100).toInt()).toDouble();
                          percent = percent / 100;
                          result = true;
                          score = 0;
                        }
                        ques = FriendsQuestions(friendsIndex).getQuestion();
                        optionA = FriendsAnswers(friendsIndex).getA();
                        optionB = FriendsAnswers(friendsIndex).getB();
                        optionC = FriendsAnswers(friendsIndex).getC();
                        optionD = FriendsAnswers(friendsIndex).getD();
                      }
                      setState(() {
                        markedB = newMark;
                        markedB = false;
                      });
                    },
                    title: Text(
                      '$optionB',
                      style: TextStyle(color: Colors.blue),
                    ),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    tileColor: Colors.white,
                  ),
                  CheckboxListTile(
                    value: markedC,
                    onChanged: (bool? newMark) {
                      if (FriendsAnswers(friendsIndex).getAnswer() == 3) {
                        score = score + 1;
                        _results.add(Icon(Icons.thumb_up, color: Colors.greenAccent));
                      }
                      else _results.add(Icon(Icons.thumb_down, color: Colors.red));
                      if (friendsIndex < friendsQuestions) {
                        friendsIndex = friendsIndex + 1;
                        if (friendsIndex == friendsQuestions) {
                          friendsIndex = 0;
                          percent = score / friendsQuestions * 100;
                          percent = ((percent * 100).toInt()).toDouble();
                          percent = percent / 100;
                          result = true;
                          score = 0;
                        }
                        ques = FriendsQuestions(friendsIndex).getQuestion();
                        optionA = FriendsAnswers(friendsIndex).getA();
                        optionB = FriendsAnswers(friendsIndex).getB();
                        optionC = FriendsAnswers(friendsIndex).getC();
                        optionD = FriendsAnswers(friendsIndex).getD();
                      }
                      setState(() {
                        markedC = newMark;
                        markedC = false;
                      });
                    },
                    title: Text(
                      '$optionC',
                      style: TextStyle(color: Colors.blue),
                    ),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    tileColor: Colors.white,
                  ),
                  CheckboxListTile(
                    value: markedD,
                    onChanged: (bool? newMark) {
                      if (FriendsAnswers(friendsIndex).getAnswer() == 4) {
                        score = score + 1;
                        _results.add(Icon(Icons.thumb_up, color: Colors.greenAccent));
                      }
                      else _results.add(Icon(Icons.thumb_down, color: Colors.red));
                      if (friendsIndex < friendsQuestions) {
                        friendsIndex = friendsIndex + 1;
                        if (friendsIndex == friendsQuestions) {
                          friendsIndex = 0;
                          percent = score / friendsQuestions * 100;
                          percent = ((percent * 100).toInt()).toDouble();
                          percent = percent / 100;
                          result = true;
                          score = 0;
                        }
                        ques = FriendsQuestions(friendsIndex).getQuestion();
                        optionA = FriendsAnswers(friendsIndex).getA();
                        optionB = FriendsAnswers(friendsIndex).getB();
                        optionC = FriendsAnswers(friendsIndex).getC();
                        optionD = FriendsAnswers(friendsIndex).getD();
                      }
                      setState(() {
                        markedD = newMark;
                        markedD = false;
                      });
                    },
                    title: Text(
                      '$optionD',
                      style: TextStyle(color: Colors.blue),
                    ),
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    tileColor: Colors.white,
                  ),
                  SizedBox(
                    height: 50
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for(var item in _results) item,
                      ],
                    ),
                  ),
                ]
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.green,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Harry Potter',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Friends',
                ),
              ],
              currentIndex: index,
              onTap: _onItemTapped,
              selectedItemColor: Colors.yellowAccent,
            ),
          ),
        );
      }
    }

    else {
      if(index == 0) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('$title', style: TextStyle(fontSize: 30)),
              centerTitle: true,
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body: Container(
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Congratulations on completing the quiz, Potterhead!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.deepPurple),
                  ),
                  Text(
                    'You scored ' + percent.toString() +'%.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.deepPurpleAccent),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'You can try more of our quizzes from the navigation bar at the bottom.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.blueGrey),
                  ),
                  Text(
                    'If you wish to give this quiz again, then click the button below:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        result = false;
                        _results = [];
                        ques = HPQuestions(0).getQuestion();
                        optionA = HPAnswers(0).getA();
                        optionB = HPAnswers(0).getB();
                        optionC = HPAnswers(0).getC();
                        optionD = HPAnswers(0).getD();
                      });
                    },
                    child: Icon(
                      CupertinoIcons.arrow_counterclockwise,
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                  ),
                ]
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.green,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Harry Potter',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Friends',
                ),
              ],
              currentIndex: index,
              onTap: _onItemTapped,
              selectedItemColor: Colors.yellowAccent,
            ),
          ),
        );
      }

      else {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text('$title', style: TextStyle(fontSize: 30)),
              centerTitle: true,
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body: Container(
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Congratulations on completing the quiz, Crapweasel!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.deepPurple),
                  ),
                  Text(
                    'You scored ' + percent.toString() +'%.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.deepPurpleAccent),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'You can try more of our quizzes from the navigation bar at the bottom.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.blueGrey),
                  ),
                  Text(
                    'If you wish to give this quiz again, then click the button below:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        result = false;
                        _results = [];
                        ques = FriendsQuestions(0).getQuestion();
                        optionA = FriendsAnswers(0).getA();
                        optionB = FriendsAnswers(0).getB();
                        optionC = FriendsAnswers(0).getC();
                        optionD = FriendsAnswers(0).getD();
                      });
                    },
                    child: Icon(
                      CupertinoIcons.arrow_counterclockwise,
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.lightGreenAccent),
                  ),
                ]
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.green,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Harry Potter',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Friends',
                ),
              ],
              currentIndex: index,
              onTap: _onItemTapped,
              selectedItemColor: Colors.yellowAccent,
            ),
          ),
        );
      }
    }
  }
}
