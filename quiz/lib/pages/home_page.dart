import 'package:flutter/material.dart';
import 'package:quiz/pages/leaderboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QUIZ",
        ),
        centerTitle: true,
        titleSpacing: 12.0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           ElevatedButton(
               onPressed: (){
                 Navigator.pushNamed(context, '/difficultyselection');
               },
               child: const Text("Play Quiz",
               style: TextStyle(fontSize: 28.0),),),
            const SizedBox(height: 20.0,),
            ElevatedButton(
                onPressed: () async {
                  List<String> val;
                  SharedPreferences prefs = await SharedPreferences
                      .getInstance();
                  var value = prefs.getStringList('leaderboard');
                  if (value != null) {
                    val = value;
                  }
                  else{
                    val =[];
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LeaderBoard(val: val)));

                    //Navigator.pushNamed(context, '/leaderboard');}
                },
                child: const Text("LeaderBoard",
                style: TextStyle(fontSize: 28.0),)),
          ],
        ),
      ),
    );
  }
}
