#include <cstdlib>
#include <iostream>
using namespace std;
// Make a variable assigning the number of guesses to 1 and assigning the
// guessNumber
int guessNumber;
int guesses;
int randomNumber;
// Make a function that assigns the random number to be guessed

// bool playAgain() {
//   char response;
//   cout << "Would you like to play again? (y/n): ";
//   cin >> response;
//   return (response == 'y' || response == 'Y');
// }


int main() {
  // Make a while loop on the condition that the guess does not equal the
  // randomized number
  srand(rand() ^ time(0));
  randomNumber = int(rand() % 101);
  int guesses = 1;
  while (guessNumber != randomNumber) {
    // Make a print statement telling the user to guess a number where the
    // number guessed is stored in the variable guessNumber
    cout << "Guess a number between 1 and 100: ";
    cin >> guessNumber;
    // If the guessNumber > than the number assigned, output the guessed number
    // with additional information that states the number is too high. Add +1 to
    // the guesses
    if (guessNumber > randomNumber) {
      cout << "You guessed, " << guessNumber
           << ", which is too high. Try again: ";
      guesses++;
      // If the guessNumber < than the number assigned, output the guessed
      // number with additional information that states the number is too low.
      // Add +1 to the guesses
    } else if (guessNumber < randomNumber) {
      cout << "You guessed, " << guessNumber
           << ", which is too low. Try again: ";
      guesses++;
      // If guessNumber does =. number assigned, then break out of the while
      // loop where the number the user guessed it outputted including the
      // number of tries it took them.
    } else {
      break;
    }
  }
  cout << "You guessed, " << guessNumber << ", which is correct. It took you, "
       << guesses << " guesses. \n";
  char responsePlay;
  // int targetNum;
  cout << "Would you like to play again? (y for yes, n for no): ";
  cin >> responsePlay;
  while(true) {
      if (responsePlay == 'y') {
        main();
      } else if (responsePlay == 'n'){
        exit('n');
  }
  //       int guesses=1;
  //   } else {
  //       break;
  //     }
  //   }
    return 0;
  }
}
