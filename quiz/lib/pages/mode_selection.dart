import 'package:flutter/material.dart';
import 'package:quiz/pages/quiz_page.dart';
import 'package:quiz/questions.dart';


class ModeSelection extends StatelessWidget {
  const ModeSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Difficulty level",style: TextStyle(fontSize: 30.0),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: (){
              qns = easy;
              Navigator.pushNamed(context, '/quiz_page');
            },
                child: Text("EASY",style:TextStyle(fontSize: 35.0),)),
            ElevatedButton(onPressed: (){
              qns = medium;
              Navigator.pushNamed(context, '/quiz_page');
            },
                child: Text("MEDIUM",style:TextStyle(fontSize: 35.0),)),
            ElevatedButton(onPressed: (){
              qns = hard;
              Navigator.pushNamed(context, '/quiz_page');
            },
                child: Text("HARD",style:TextStyle(fontSize: 35.0),)),
          ],
        ),
      ),
    );
  }
}
