import 'dart:math';
class Game{
  int answer = 0; //field
  int  i = 0;
  int ans = 0;
  Game({int maxRandom = 0}){
    var r = Random();
    answer = r.nextInt(maxRandom) + 1; //
    print(' คำตอบ ตือ $answer');
  }
  int getguess(int number_guess){
    i += 1;
    if(number_guess > answer){
      print(' ║ $number_guess is TOO HIGH! ▲');
      return 0;
    }
    else if(number_guess < answer){
      print(' ║ $number_guess is TOO LOW ▼');
      return 0;
    }
    else{
      print(" ║ Congratulations ✔ total guesses: $i");
      return 3;
    }
  }
}