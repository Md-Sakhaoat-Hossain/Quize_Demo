import 'package:flutter/material.dart';
import 'package:quize/quize_home_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Play",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 30.0,),
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => QuizeHomePage())),
                child: Text('Start',style: Theme.of(context).textTheme.titleLarge,))
          ],
        ),
      ),
    );
  }
}