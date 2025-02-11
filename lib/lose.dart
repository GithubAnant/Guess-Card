import 'package:flutter/material.dart';

class Lose extends StatelessWidget {
  final double points;
  const Lose({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [const Color(0xFF12C2E9), const Color(0xFFFFA734)])
      ),

      child: Scaffold(
      appBar: AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ),

        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              SizedBox(                
                child: Text(
                  'FINAL SCORE: ${points.toInt()}',
                  style: TextStyle(
                    fontFamily: 'Silkscreen',
                    fontSize: 35
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}