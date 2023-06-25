
import 'package:flutter/material.dart';

class LeaderBoard extends StatelessWidget {
  late List<String> val;
  LeaderBoard({Key? key,required this.val}) : super(key: key);
  @override
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("LeaderBoard",style: TextStyle(fontSize: 30.0),),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(val.length, (index) => Display(txt: val[index])),
          ),
        ),
      ),
    );
  }
}



class Display extends StatelessWidget {
  final String txt;
  const Display({Key? key,required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(5.0),
      child: Text(txt,style:const  TextStyle(fontSize: 25.0,color: Colors.black),),
    );
  }
}
