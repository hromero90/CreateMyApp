import 'package:flutter/material.dart';
import 'package:travelapp/Model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quiz app',
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var counter = 0;

  List qList = [
    Questions("1.Diseñar una app es inncesario.", false),
    Questions("2.Kelvin is a measure of temperature.", true),
    Questions("3.The Atlantic Ocean is the biggest ocean on Earth.", false),
    Questions("4.Sharks are mammals.", false),
    Questions("5.The human skeleton is made up of less than 100 bones.", false),
    Questions("6.Atomic bombs work by atomic fission.", true),
    Questions("7.Molecules are chemically bonded.", true),
    Questions("8.Spiders have six legs.", false),
    Questions(
        "9.Mount Kilimanjaro is the tallest mountain in the world.", false),
    Questions("10.The study of plants is known as botany.", true),
  ];

  var score = 0;

  checkWin(bool userChoice, BuildContext context) {
    if (userChoice == qList[counter].isCorrect) {
      print("Correcto");

      score = score + 5;
      final snackbar = SnackBar(
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.green,
        content: Text("Correcto!"),
      );
      Scaffold.of(context).showSnackBar(snackbar);
    } else {
      print("false");
      score = score + 0;
      final snackbar = SnackBar(
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.red,
        content: Text("Incorrecto!"),
      );
      Scaffold.of(context).showSnackBar(snackbar);
    }
    setState(() {
      if (counter < 9) {
        counter = counter + 1;
      }
    });
  }

  reset() {
    setState(() {
      counter = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Color(0xFFF7C229),
   
        title: Text('QUIZ',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),*/
      backgroundColor: Color(0xFF212239),
      body: Builder(
        builder: (BuildContext context) => Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 400,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/png.png"),
                      fit: BoxFit.fill),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Puntaje : $score /50",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      child: Text(
                        "Reiniciar Quiz",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: reset,
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.white)),
                height: 90.0,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FittedBox(
                      child: Text(qList[counter].qText,
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.white)),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => checkWin(true, context),
                    padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
                    child: Text(
                      "Verdadero",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  RaisedButton(
                    onPressed: () => checkWin(false, context),
                    padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 30.0),
                    child: Text(
                      "Falso",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
