import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quize/question_view.dart';
import 'package:quize/quize_model.dart';
import 'package:quize/result.dart';

class QuizeHomePage extends StatefulWidget {
  const QuizeHomePage({super.key});

  @override
  State<QuizeHomePage> createState() => _QuizeHomePageState();
}

class _QuizeHomePageState extends State<QuizeHomePage> {
  late Timer timer;
  int count = 30;
  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
       setState(() {
         if(count > 0){
           count--;
         } else{
           timer.cancel();
         }
       });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Computer Quiz'),
        actions: [
          ElevatedButton(
              onPressed: _finishQuize,
            child: const Text('Finish'),
          )
        ],
      ),
      body: Column(
        children: [
          Text('$count', style: Theme.of(context).textTheme.displayMedium,),
          Expanded(
            child: ListView.builder(
              itemCount: questionList.length,
              itemBuilder: (context, index){
                final quizeModel = questionList[index];
                return QuestionView(
                    index: index + 1,
                    quizeModel: quizeModel,
                  onSubmit: (value){
                      setState(() {
                        questionList[index].givenAnswer = value;
                      });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _finishQuize() {
    int total = 0;
    for(final quizeModel in questionList){
      if(quizeModel.rightAnswer == quizeModel.givenAnswer){
        total ++;
      }
    }
    for(final quizeModel in questionList){
      quizeModel.givenAnswer = '';
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => Result(result: total)));
    }
  }

