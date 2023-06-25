import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ResultPage extends StatelessWidget {
  final int points;
  final int correctAnswers;
  const ResultPage({required this.points,required this.correctAnswers,Key? key}) : super(key: key);

  @override
   build(BuildContext context) {
    void loaddata() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var val = prefs.getStringList('leaderboard');
      List<int> l =[];
      if (val != null){
        l = val.map((e) => int.parse(e)).toList();
      }
      l.add(points);
      l.sort((a,b) => b.compareTo(a));
      val = l.map((e) => e.toString()).toList();
      prefs.setStringList('leaderboard', val);
    }

    loaddata();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () async{

                  Navigator.pop(context);},
                    icon: Icon(Icons.close,color: Colors.grey[900],))
              ],
            ),
            Image.asset("assets/result.jpg"),
            const SizedBox(height: 20.0,),
            const Text("Quiz Results",
            style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold,color: Colors.blue),),
            const SizedBox(height: 20.0,),
            Column(
              children: [
                Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.stars_sharp),
                      const SizedBox(width: 20.0,),
                      Text("YOUR SCORE : $points",style:const TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold),),

                    ],
                  ),
                ),
              const SizedBox(height: 30.0,),
              Container(
                color: Colors.grey,
                padding:const  EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.check_circle),
                    const SizedBox(width: 20.0,),
                    Text("CORRECT PREDICTIONS : $correctAnswers",style: const TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
