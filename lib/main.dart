import 'package:flutter/material.dart';
import 'package:questionapp/test_data.dart';
import 'constants.dart';

void main() {
  runApp(QuestionApp());
}

class QuestionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  TestData test_1 = TestData();

  bool buttonAnswer = true;

   List<Widget>  Result =  [

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 5,
            spacing: 5,
            children: Result,
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(12),
                        ),
                      ),
                      //textColor: Colors.white,
                      // color: Colors.red[400],
                      child: Icon(
                        Icons.thumb_down,
                        size: 30.0,
                      ),
                      onPressed: () {
                        setState(() {
                          buttonAnswer=false;

                          if(test_1.getQuestionAnswer()==buttonAnswer){
                            Result.add(cIconHappy);
                          }else{
                            Result.add(cIconSad);
                          }
                          test_1.NextQuestion();
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(12.0),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        setState(() {
                          buttonAnswer=true;

                          if(test_1.getQuestionAnswer()==buttonAnswer){
                            Result.add(cIconHappy);
                          }else{
                            Result.add(cIconSad);
                          }

                          test_1.NextQuestion();
                        });
                      },
                      child: Icon(
                        color: Colors.white,
                        Icons.thumb_up,
                        size: 30.0,
                      )),
                )),
              ])),
        )
      ],
    );
  }
}
