import 'dart:ffi';

import 'questions.dart';

class TestData{


   List<Question> _QuestionsBank = [
     Question(questionText: 'Titanik sorusu', questionAnswer: true),
     Question(questionText: 'Tavuk sorusu', questionAnswer: false),
     Question(questionText: 'Kelebek sorusu', questionAnswer: true),
     Question(questionText: 'Dünya düz sorusu', questionAnswer: false),
     Question(questionText: 'Kaju sorusu', questionAnswer: false),
     Question(questionText: 'Fatih sorusu', questionAnswer: false)
   ];

  String getQuestionText (int questionIndex){

    return _QuestionsBank[questionIndex].questionText;

  }

  bool getQuestionAnswer (int questionIndex){

    return _QuestionsBank[questionIndex].questionAnswer;
  }

  int getQestionsBankLength (){
    return _QuestionsBank.length;
  }

 }