import 'package:flutter/material.dart';
import 'package:quize/home_page.dart';
import 'package:quize/quize_home_page.dart';
import 'package:quize/quize_model.dart';

class Result extends StatelessWidget {
  final int result;
  const Result({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$result', style: Theme.of(context).textTheme.displayLarge,),
            Text('Out of ${questionList.length}', style: Theme.of(context).textTheme.titleMedium),
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage())),
                child: const Text('Start Again'),
            )
          ],
        ),
      ),
    );
  }
}
