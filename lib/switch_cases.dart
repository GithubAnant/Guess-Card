void gameLogic({

  required String buttonType,
  required String cardTypeString,
  required int previousNumber,
  required int cardNumber,
  required Function(double) updatePoints,
  required Function(int) updateLives,
  
    }) {

      double points = 0;
      int lives = 0; 

      switch (buttonType) {
      case 'Higher Red':
      if (cardTypeString == 'hearts'|| cardTypeString == 'diamonds') {
        if (cardNumber > previousNumber){
          points += 3;
        }
        else if (cardNumber < previousNumber) {
          lives -= 1;
        }
      }
      else {
         if (cardNumber > previousNumber){
          points +=1 ;
        }
      }

      case 'Higher Black':
      if (cardTypeString == 'spades'|| cardTypeString == 'clubs') {
        if (cardNumber > previousNumber){
          points += 3;
        }
        else if (cardNumber < previousNumber) {
          lives -= 1;
        }
      }
      else {
         if (cardNumber > previousNumber){
          points +=1 ;
        }
      }
        break;
      

      case 'Lower Red':
      if (cardTypeString == 'hearts'|| cardTypeString == 'diamonds') {
        if (cardNumber < previousNumber){
          points += 3;
        }
        else if (cardNumber > previousNumber) {
          lives -= 1;
        }
      }
      else {
        if (cardNumber < previousNumber){
          points +=1 ;
        }
      }
        break;

      case 'Lower Black':
      if (cardTypeString == 'spades'|| cardTypeString == 'clubs') {
        if (cardNumber < previousNumber){
          points += 3;
        }
        else if (cardNumber > previousNumber) {
          lives -= 1;
        }
      }
      else {
        if (cardNumber < previousNumber){
          points +=1 ;
        }
      }
        break;
      default:
    }

    updatePoints(points);  
    updateLives(lives);  


}