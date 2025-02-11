import 'package:card_game/all_buttons.dart';
import 'package:card_game/lose.dart';
import 'package:card_game/switch_cases.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  double points = 0;
  int previousNumber= 0;
  String? previousColor;
  int lives = 3;
  int cardTypeNumber = 0;
  int cardNumber = 0;
  String cardTypeString = '';
  String cardImageName = '';
  
  @override
  void initState() {
    shuffleAndPick();
    super.initState();
  }

  void resultLoad() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Lose(points: points,)),
    );
  }


  void shuffleAndPick() {

    setState(() {
      
      if (lives !=0) {
      cardTypeNumber = Random().nextInt(4);
      List<String> linking = ['hearts', 'spades', 'clubs', 'diamonds'];
      cardTypeString = linking[cardTypeNumber];
      if (cardTypeNumber == 0 || cardTypeNumber == 1) {
        cardNumber = Random().nextInt(14) + 1;
      } else {
        cardNumber = Random().nextInt(13) + 1;
      }
      cardImageName = 'assets/images/${cardNumber}_of_$cardTypeString.png';
      }

      else {
        resultLoad();
      }

    });
  }

    void updatePoints(double value) {
    setState(() {
      points += value;
    });
  }

  void updateLives(int value) {
    setState(() {
      lives += value;
    });
  }

  void handleButtonClick (String buttonType) {
    previousNumber = cardNumber;
    shuffleAndPick();

        if (cardNumber == 14) {
          lives = 3;
          points /= 2;          
        }
      else {
      gameLogic(
          buttonType: buttonType, 
          cardTypeString: cardTypeString, 
          previousNumber: previousNumber, 
          cardNumber: cardNumber, 
          updateLives: updateLives, 
          updatePoints: updatePoints
        );
      setState(() {
      });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xFF12C2E9), const Color(0xFFFFA734)])),

      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),


        body: Center(
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Lives: ', style: TextStyle(fontFamily: 'Silkscreen', fontSize: 20),),

                    ...List.generate(lives, (index) => Icon(Icons.favorite, color: Colors.red))

                  ],
                )
              ),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: SizedBox(
                  width: 260,
                  child: Image.asset(cardImageName)),
              ),

            GameButtonWidget(handleButtonClick: handleButtonClick),

              Container(
                margin: EdgeInsets.only(top: 50, bottom: 10),
                child: Text(
                  'Points: ${points.toInt()}',
                   style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Silkscreen',
                    fontSize: 22
                   ),
                  ),
              )

            ],
            
          ),
        ),
      ),
    );
  }
}