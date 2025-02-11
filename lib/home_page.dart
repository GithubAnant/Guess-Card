import 'package:card_game/game.dart';
import 'package:card_game/rules.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

void gameLoad() {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Game()),
  );
}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xFF12C2E9), const Color(0xFFFFA734)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CARD RUMBLE',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Silkscreen',
                  fontSize: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 15),
                child: ElevatedButton (
                  onPressed: () {
                    _showDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 15,
                  ),
                  child: Text('Game Rules',
                  style: TextStyle(
                    color: Colors.black
                  ),),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 0, bottom: 15),
                child: ElevatedButton (
                  onPressed: () {
                    gameLoad();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 15,

                  ),
                  child: Text('Play Game',
                  style: TextStyle(
                    color: Colors.black
                  ),),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Rules();
        });
  }
}
