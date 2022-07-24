import 'dart:ffi';

import 'questions.dart';

class TestData{
      int _questionIndex=0;


   List<Question> _QuestionsBank = [
     Question(questionText: 'Titanik sorusu', questionAnswer: true),
     Question(questionText: 'Tavuk sorusu', questionAnswer: false),
     Question(questionText: 'Kelebek sorusu', questionAnswer: true),
     Question(questionText: 'Dünya düz sorusu', questionAnswer: false),
     Question(questionText: 'Kaju sorusu', questionAnswer: false),
     Question(questionText: 'Fatih sorusu', questionAnswer: false)
   ];

  String getQuestionText ( ){

    return _QuestionsBank[_questionIndex].questionText;

  }

  bool getQuestionAnswer ( ){

    return _QuestionsBank[_questionIndex].questionAnswer;
  }

  void NextQuestion (){

    _QuestionsBank.length-1>_questionIndex
      ? _questionIndex++
      : _questionIndex=0;

  }

 }