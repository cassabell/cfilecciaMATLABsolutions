function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Cassie Fileccia
%
%         DUE: End of class, November 21
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced 
% BUG: Code was set to 'or' and between each condition and wouldn't properly execute. Changed conditions to 'and' so that each condition is evaluated.
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner
% BUG: Attempted to run code, error message showed error on line 55 as incorrect use
% of '='. There was only one '=' sign, which assigns a value to set level
% equal to beginner and the code needs to compare values for equality.
% Added an extra '=' to solve error.

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;    
% The variable had a lower case 'h', so it wasn't working properly. To fix
% this I capitalized the letter to match the initialized variable
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand([1, highest]));     
%BUG: This code was executing incorrectly and always setting the secret
%number equal to the highest number. I changed it to make the secret number
%a range between 1 and the highest number.

% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');

end
% BUG: Attempted to run code, error message indicated an 'end' is missing for
% the while loop starting at line 82. Added an 'end' to stop the while loop
% conition.

while userGuess < 1 || userGuess > highest
% BUG: This code had a '>=' between the userGuess and highest, meaning the code would not run if a
% user input the highest value as an option. I took out the '=' so that he highest number could still be an option. 

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;
% BUG:

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber
%BUG: This sign was greater than, which would indicate the guess is too high. To resolve the sign was changed to '<' to express that the userGuess was too low. 
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);
% BUG: When displaying the congratulations screen, it was not properly
% displaying the number of tries. I added the numOfTries variable to the
% end of the display message


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end % of guessing while loop

end
% BUG: There was an 'end' missing to end the game.

% end of game