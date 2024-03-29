%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 4: Tic Tac Toe with Loops
% Cassie Fileccia
% Due: October 16, 2019
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%This code allows a user to repeatedly play games of Tic Tac Toe against
%a computer. The board is plottted on an x,y axis that correlates to numbers
%1 through 9 that are accepted as input. Players are allowed to input whichever
%acceptable number they choose and the compuer will randomly generate a
%move in return. After the player's 3rd choice, the code begins checking
%for win conditions to see if either the player or computer has won the
%game by getting 3 in a row. After the game is finished, the user is asked
%if they would like to play again. If they respond yes, the game starts
%over from scratch. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Reset Board
clc

%Welcome Message
welcome = input('Welcome to Tic Tac Toe. Would you like to play? (Yes or No):','s');
if strcmpi(welcome, 'Yes')
    disp('Here is how you play: It is recommended you play this game with the MATLAB window not open to')
    disp('full size(screen should be slightly minimized) in order to see the board while you make your')
    disp('moves. The Tic Tac Toe board displayed consists of 9 open spaces. When it is your turn you wil')
    disp('be asked to input a whole number 1 through 9. If you enter the number: 1 your move will go in')
    disp('the top left corner; 2 is the top middle space; 3 is the top right space;4 is the far left space')
    disp('in the middle row; 5 is the very center space; 6 is the far right space in the middle row; 7 is')
    disp('the bottom left space; 8 is the bottom middle space; 9 is the bottom right space. The object of')
    disp('the game is to get 3 in a row either up and down, left to right, or diagnolly. You will be "X"')
    disp('and the computer will be "O".')
elseif strcmpi(welcome, 'No')
    disp('Come back when you would like to play')
    return
else
    welcome = input('Please type "Yes" or "No" :', 's');
    if strcmpi(welcome, 'Yes')
       disp('Here is how you play: It is recommended you play this game with the MATLAB window not open to')
       disp('full size(screen should be slightly minimized) in order to see the board while you make your')
       disp('moves. The Tic Tac Toe board displayed consists of 9 open spaces. When it is your turn you wil')
       disp('be asked to input a whole number 1 through 9. If you enter the number: 1 your move will go in')
       disp('the top left corner; 2 is the top middle space; 3 is the top right space;4 is the far left space')
       disp('in the middle row; 5 is the very center space; 6 is the far right space in the middle row; 7 is')
       disp('the bottom left space; 8 is the bottom middle space; 9 is the bottom right space. The object of')
       disp('the game is to get 3 in a row either up and down, left to right, or diagnolly. You will be "X"')
       disp('and the computer will be "O".')
    elseif strcmpi(welcome, 'No')
        disp('Come back when you would like to play')
        return
    else
        disp('You have not entered an accepted word too many times. Try back later.')
        return
    end
end

replay = true;

% This while loop contains the entire game and will continue to run as long as
% the user chooses to continue playing
while (replay == true)

%Set board and variables
figure('Name', 'Tic Tac Toe')
hold on
plot([.5 3.5],[1.5 1.5], 'k')
plot([.5 3.5],[2.5 2.5], 'k')
plot([1.5 1.5],[.5 3.5], 'k')
plot([2.5 2.5],[.5 3.5], 'k')
axis off
hold off
savefig('TicTacToeBoard')


moves = [1:9];
usedMoves = [];
playerMoves = [];
cpuMoves = [];

v = [1 2];

%This for loop runs through the first 4 rounds with no win conditions set 
for i = 1:length(v)

%Player's turn
playerMove = input('Enter your move [1-9] :');

if ismember(playerMove,usedMoves)
    playerMove = input('Please pick a spot that is not already taken. Try again:');
end

if ismember(playerMove, moves)
else
    playerMove = input('Please pick an integer 1 through 9. Try again :');
end

if ismember(playerMove, moves)
else
    disp('You''ve input an invalid number too many times. Game Over.')
    close Figure 1
    break
    
end

if playerMove == 1
         x = 1;
         y = 3;
    elseif playerMove == 2
         x = 2;
         y = 3;
    elseif playerMove == 3
        x = 3;
        y = 3;
    elseif playerMove == 4
        x = 1;
        y = 2;
    elseif playerMove == 5
        x = 2;
        y = 2;
    elseif playerMove == 6
        x = 3;
        y = 2;
    elseif playerMove == 7
        x = 1;
        y = 1;
    elseif playerMove == 8
        x = 2;
        y = 1;
    elseif playerMove == 9
        x = 3;
        y = 1;
end

%Displays player's choice on plot
text(x,y,'X','horizontalalignment','center','fontsize',30)

%Stores variables
usedMoves = [usedMoves, playerMove];
possMoves = setdiff(moves,usedMoves);
playerMoves = [playerMoves, playerMove];

%Computer move
cpuMove = randsample(possMoves, 1);

if cpuMove == 1
    x = 1;
    y = 3;
elseif cpuMove == 2
    x = 2;
    y = 3;
elseif cpuMove == 3
    x = 3;
    y = 3;
elseif cpuMove == 4
    x = 1;
    y = 2;
elseif cpuMove == 5
    x = 2;
    y = 2;
elseif cpuMove == 6
    x = 3;
    y = 2;
elseif cpuMove == 7
    x = 1;
    y = 1;
elseif cpuMove == 8
    x = 2;
    y = 1;
elseif cpuMove == 9
    x = 3;
    y = 1;
end

%Displays computer's move
text(x,y,'O','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove, cpuMove];
possMoves = setdiff(moves,usedMoves);
cpuMoves = [cpuMoves, cpuMove];

end

w = [1 2 3];

%This loop is for turns 5-9, which checks for win conditions after each
%turn
for i = 1:length(w)

%Player's turn
playerMove = input('Enter your move [1-9] :');

if ismember(playerMove,usedMoves)
    playerMove = input('Please pick a spot that is not already taken. Try again:');
end

if ismember(playerMove,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    close Figure 1
    clearvars
    break
end

if ismember(playerMove, moves)
else
    playerMove = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove, moves)
else
    disp('You''ve input an invalid number too many times. Game Over.')
    close Figure 1
    clearvars
    break
end

if playerMove == 1
    x = 1;
    y = 3;
elseif playerMove == 2
    x = 2;
    y = 3;
elseif playerMove == 3
    x = 3;
    y = 3;
elseif playerMove == 4
    x = 1;
    y = 2;
elseif playerMove == 5
    x = 2;
    y = 2;
elseif playerMove == 6
    x = 3;
    y = 2;
elseif playerMove == 7
    x = 1;
    y = 1;
elseif playerMove == 8
    x = 2;
    y = 1;
elseif playerMove == 9
    x = 3;
    y = 1;
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

%Check win conditions

playerMoves = [playerMoves, playerMove];

if ismember([1,2,3],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([4,5,6],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([7,8,9],playerMoves)
     disp('Congratuations! You Won!')
     pause (3)
    close Figure 1
    clearvars
    break
elseif ismember([1,4,7],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([2,5,8],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([3,6,9],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([1,5,9],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([3,5,7],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    clearvars
    break
end

usedMoves = [usedMoves, playerMove, cpuMove];
possMoves = setdiff(moves,usedMoves);

%Computer Move

% If all 9 spaces are taken, the game is a tie and there are no more
% possible moves for the computer to make
if sum(possMoves) == 0
    disp('Cat''s game. Try again.')
    pause(3)
    close Figure 1
    break
end

cpuMove = randsample(possMoves,1);

if cpuMove== 1
    x = 1;
    y = 3;
elseif cpuMove == 2
    x = 2;
    y = 3;
elseif cpuMove == 3
    x = 3;
    y = 3;
elseif cpuMove == 4
    x = 1;
    y = 2;
elseif cpuMove == 5
    x = 2;
    y = 2;
elseif cpuMove == 6
    x = 3;
    y = 2;
elseif cpuMove == 7
    x = 1;
    y = 1;
elseif cpuMove == 8
    x = 2;
    y = 1;
elseif cpuMove == 9
    x = 3;
    y = 1;
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

%Check win conditions
cpuMoves = [cpuMoves, cpuMove];

if ismember([1,2,3],cpuMoves)
    disp('You lost. Better luck next time.')
    pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([4,5,6],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([7,8,9],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([1,4,7],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([2,5,8],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([3,6,9],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([1,5,9],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    clearvars
    break
elseif ismember([3,5,7],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    clearvars
    break
end



end

% This "if, then" statement allows the user to decide if they want to
% start a new game after their previous game has ended
playAgain = input('Would you like to play again?','s');
if strcmpi(playAgain, 'Yes')
    replay = true;
else 
    replay = false;
    disp('Bye! Come back soon!')
end

end


