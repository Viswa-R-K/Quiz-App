import 'dart:math';


class Questions{
  late String question;
  late List<String> options;
  late String answer;

  Questions({required this.question,required this.options,required this.answer});

}


//List<Questions> qns = [Questions(question: "What is your name", options: ["Harish","Shiv","Vince","Depends on user"], answer: "Depends on user"),
//  Questions(question: "What is the capital of India", options: ["Chennai","Kolkata", "New Delhi","Mumbai"], answer: "New Delhi"),
//  Questions(question: "When did India Got independence", options: ["1947", "1843","1943","1847"], answer: "1947"),
//  Questions(question: "Who is the father of Our Nation", options: ["Jawaharlal Nehru","Suresh Raina","Mahatma Gandhi","Subhash Chandra Bose"], answer: "Mahatma Gandhi"),
//  Questions(question: "How many days in a week", options: ["3","8","10","7"], answer: "7"),
//  Questions(question: "What is the first element in periodic table", options: ["Hydrogen","Oxygen","Nitrogen","Helium"], answer: "Hydrogen"),
//  Questions(question: "What is the colour of black hole", options: ["Black","We don't know", "White", "Yellow"], answer: "We don't know"),
//  Questions(question: "Who is the captain of Indian Cricket Team", options: ["MS Dhoni", "Rohit Sharma", "Suresh Raina","Virat Kohli"], answer: "Rohit Sharma"),
//  Questions(question: "What is the powerhouse of a cell", options: ["Mitochondria","Endoplasmic Reticulum","Nucleus","Plastids"], answer: "Mitochondria"),
//  Questions(question: "How many makes a Dozen", options:["11","10","12","13"], answer: "12"),
//  Questions(question: "Who built Taj-Mahal", options: ["Akbar","Jahangir","Aurangazeb","Shahjahan"], answer: "Shahjahan")

//];

List<Questions> easy=[
  Questions(question: "What is the capital of India", options: ["Chennai","Kolkata", "New Delhi","Mumbai"], answer: "New Delhi"),
  Questions(question: "When did India Got independence", options: ["1947", "1843","1943","1847"], answer: "1947"),
  Questions(question: "How many days in a week", options: ["3","8","10","7"], answer: "7"),
  Questions(question: "Who built Taj-Mahal", options: ["Akbar","Jahangir","Aurangazeb","Shahjahan"], answer: "Shahjahan"),
  Questions(question: "How many makes a Dozen", options:["11","10","12","13"], answer: "12"),
  Questions(question: "Who is the father of Our Nation", options: ["Jawaharlal Nehru","Suresh Raina","Mahatma Gandhi","Subhash Chandra Bose"], answer: "Mahatma Gandhi"),
  Questions(question: "Who is the captain of Indian Cricket Team", options: ["MS Dhoni", "Rohit Sharma", "Suresh Raina","Virat Kohli"], answer: "Rohit Sharma"),
  Questions(question: 'Which of the following is a fruit', options: ['Brinjal','Carrot','Tomato','Spinach'], answer: 'Tomato'),
  Questions(question: "Who discovered gravity?", options: ['Newton','Edison','Einstein','Ptolemy'], answer: 'Newton'),
  Questions(question: 'Which country has the capital Sana\'a', options: ['Nigeria','Yemen','Syria','Mongolia'], answer: 'Yemen')
];


List<Questions> medium=[
  Questions(question: "What is the first element in periodic table", options: ["Hydrogen","Oxygen","Nitrogen","Helium"], answer: "Hydrogen"),
  Questions(question: "What is the powerhouse of a cell", options: ["Mitochondria","Endoplasmic Reticulum","Nucleus","Plastids"], answer: "Mitochondria"),
  Questions(question: "What is the most abundant element in the universe", options:['Carbon','Hydrogen','Silicon','Sulphur'], answer: 'Hydrogen'),
  Questions(question: "Who invented radium", options: ['Marie Curie','Albert Einstein','Dmirti Mendeleev','John Dalton'], answer: 'Marie Curie'),
  Questions(question: "Who is the winner of Fifa 2018", options: ['Croatia','France','Argentina',"Portugal"], answer: 'France'),
  Questions(question: "Which team won the first cycle of World Test Championship", options: ['England','India','Australia','New Zealand'], answer: 'New Zealand'),
  Questions(question: "When did WW2 started", options: ['1945','1935','1939','1949'], answer: '1939'),
  Questions(question: "Who is the discoverer of Electron", options: ['J.J.Thomson','Rutherford','J.Dalton','Lavoisier'], answer: 'J.J.Thomson'),
  Questions(question: 'What is the acid present in grapes', options: ['Malic  acid','Tartaric acid','Acetic acid','Oxalic acid'], answer: 'Tartaric acid'),
  Questions(question: 'Where is Machu Picchu located?', options: ["Brazil","Australia","Peru","Zimbabwe"], answer: "Peru"),
];


List<Questions> hard=[
  Questions(question: 'Worlds largest dam in in', options: ['China','USA','India','Canada'], answer: 'China'),
  Questions(question: "How many bones in adult human body", options: ['270','206','213','208'], answer: '206'),
  Questions(question: "Who invented Smartphone", options: ['Steve Jobs',"Alexander Graham Bell","Frank Canova","Antonio Ceucci"], answer: "Frank Canova"),
  Questions(question: "Who is the first man to space", options: ['Yuri Gagarin','Neil Armstrong','Buzz Aldrin','John Glenn'], answer: 'Yuri Gagarin'),
  Questions(question: 'What is the most abundant material', options: ['Iron','Oxygen','Indium','Silicon'], answer: 'Silicon'),
  Questions(question: "Who is the father of electricity?", options: ['Micheal Faraday','Gauss','Alessandra Volta','Humphry Davy'], answer: "Micheal Faraday"),
  Questions(question: "Who started the Reign of Terror", options: ['King Louis','Maximilien Robespierre','Napolean Bonaparte','Roger Ducos'], answer: 'Maximilien Robespierre'),
  Questions(question: "When did black hole image was captures", options: ['2019','2018','2017','2016'], answer: '2019'),
  Questions(question: "What is the largest dessert", options: ['Sahara','Thar','Great Australian','Antartic Desert'], answer: 'Antartic Desert'),
  Questions(question: "What is the smallest subatomic particle", options: ['Quarks','Protons','Muon','Nutrino'], answer: 'Quarks')
];


List<Questions> qns=[];
//List<Questions> getQuestion(List<Questions> qns){
//  List<Questions> q =[];
 // for(int i=0; i<5;i++){
   // int j = Random().nextInt(qns.length-1);
    //qns.remove(qns[j]);
    //q.add(qns[j]);
  //}
  //return q;
//}

Questions getQuestion(List<Questions> qns){
  int j = Random().nextInt(qns.length);
  Questions a=qns.removeAt(j);
  return a;
}
