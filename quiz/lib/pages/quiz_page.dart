
import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';
import 'result_page.dart';



class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int point = 0;
  int index = 1;
  List<bool> selectedOptions = List.generate(4, (_) => false);
  bool answerChecked = false;
  Questions quest = getQuestion(qns);
  int selectedAnswer =0;
  int correctAnswers=0;
  //List<Questions> q = getQuestion(qns);

  void nextQuestion(){
    setState(() {
      quest = getQuestion(qns);
      selectedAnswer = 0;
    });
  }

  void checkAnswer(){
    if (quest.options[selectedAnswer] == quest.answer){
      point +=4;
      correctAnswers+=1;
    }
    else{
      point -=1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          color: Colors.grey[100],
                          padding:const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(Icons.stars_sharp,size: 30.0,color: Colors.blue[900],),
                              const SizedBox(width: 8.0,),
                              Text("$point",style: const TextStyle(fontSize: 20.0),),
                            ],
                          )),
                      IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon(Icons.close),color: Colors.grey[900],)
                    ],
                  ),
                  const SizedBox(height: 5.0,),
                  Text("Format : +4 for Correct answer and -1: for wrong answer",
                    style: TextStyle(fontSize: 14.0,color: Colors.blue[900]),softWrap: true,),
                  const SizedBox(height: 5.0,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(quest.question,
                        style: TextStyle(fontSize: 20.0,color: Colors.blue[800],fontWeight: FontWeight.bold),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(4, (index) => OptionButton(
                          option: quest.options[index],
                        isSelected: selectedOptions[index],
                        isCorrect: answerChecked && quest.options[index] == quest.answer,
                        onPressed: (){
                            setState(() {
                              if (answerChecked){
                                return;
                              }
                              selectedOptions = List.generate(4, (index) => false);
                              selectedOptions[index] = true;
                              selectedAnswer = index;
                            });
                        },)),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        //TODO: Complete the remaining logic;
                        if (index < 5){
                          checkAnswer();
                          index +=1;
                          selectedOptions = List.generate(4, (index) => false);
                          nextQuestion();
                        }
                        else{
                          checkAnswer();
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> ResultPage(points: point,correctAnswers: correctAnswers,)));
                        }
                      });
                    },
                    child: (index==5) ? const Text("FINISH") : const Text("CONTINUE") ),

              ],
          ),
        ),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final String option;
  final bool isSelected;
  final bool isCorrect;
  final VoidCallback onPressed;

  const OptionButton({super.key,
    required this.option,
    required this.isSelected,
    required this.isCorrect,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Colors.grey;
    if (isSelected) {
      buttonColor = Colors.lightBlueAccent;
    }

    return Column(
      children: [
        const SizedBox(height: 20.0,),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
                color: Colors.white,
              ),
              const SizedBox(width: 10.0,),
              Text(
                option,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0,)
      ],
    );
  }
}




