# _Hangman_

_1 October 2020_

#### _Application for playing Hangman_

#### By _**Alma Frankenstein, Adam Mansell, and Vanessa Stewart**_

## Description

_This is a project for Epicodus to practice routing with Ruby while using test-driven development. The original instructions include:_

Make a program to play the Hangman game.

If you're not familiar with Hangman, it works something like this: The spaces at the bottom represent letters of a word - in this case, the word is six letters long. On each turn, the player must guess a letter. If the letter is in the word, it's added to the bottom  . . . The spaces at the bottom represent letters of a word - in this case, the word is six letters long. On each turn, the player must guess a letter. If the letter is in the word, it's added to the bottom . . . If the player gets all the letters in the word, they win. If the hangman's body is completed before the player guesses the word, they lose. Build an app for playing Hangman. The computer can generate the words from a pre-set list you provide. Think carefully about the objects you'll use before starting and remember to write the specs and business logic methods before you make the app.

## Specifications
| Spec     | Behavior |
| -------- | -------- | 
| 1 | User will select 'Play!' button on landing page to initialize new game. | 
| 2 | Screen will populate 1) a gallows, 2) blank lines to represent the word to guess 3) a form to enter letter guesses, and 4) an area that shows what letters have already been guessed.  | 
| 3 | If a user enters a letter in the word, the blank spaces of the word with that letter reveal the letter. No changes occur to the gallows. |
| 4 | If a user guesses an incorrect letter: 1) that incorrect letter is added to the area of previous guesses, and 2) the gallows adds a body part. |
| 5 | If head, body, arm 1, arm 2, leg 1, and leg2 have all been drawn, then the player loses the game (so 6 incorrect guesses) |
| 6 | If a user correctly identifies all letters in the word, then the screen populates a "You've won!" message and provides a button option to play again. |

## Backend Logic
| URL | CRUD Action | Method | Description |
| --- | ------------| ------ | ----------- | 
| '/' | Read | GET | Read splash page with welcome message and "Play!" button  |
| '/play' | Create | GET | Initialize a new game with a blank scaffold, a form for entering letters to guess, a randomly selected word, blanks for the possible letters of the word, and a running list of incorrect guesses |
| '/play' | Update | PATCH | If the guess is incorrect, add the guessed letter to the incorrect guesses list and add a body part |
| '/play' | Update | PATCH | If the guess is correct, fill in every occurrence of the letter in the blanks |

## Setup/Installation Requirements_

To View Project:
* Open a web browser of your choice and navigate to the following page:

To Extend This Project:
* Clone this project using the 'git clone' command in terminal.
* Open the cloned repo in a text editor of your choice.

- Clone this project using the 'git clone' command in terminal/command line.
- Navigate to the cloned folder and run 'bundle' in your command line.
- Open the cloned repo in a text editor of your choice.
- To run tests: While in the root directory of the project, run 'rspec' in your command line.
- To run the app.rb file in the terminal, run 'ruby app.rb' in the terminal.

## Known Bugs

_There are no known bugs at this time._

## Technologies Used

* Ruby
* Sinatra
* Capybara
* HTML

### License

Copyright (c) 2020 _**Alma Frankenstein, Adam Mansell, and Vanessa Stewart**_

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.