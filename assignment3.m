%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 3: Tic Tac Toe Game
% Cassie Fileccia
% Due: October 2, 2019
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%This code allows a user to play a game of Tic Tac Toe against a computer.
%The board is plottted on an x,y axis that correlates to numbers 1 through
%9 that are accepted as input. Players are allowed to input whichever
%acceptable number they choose and the compuer will randomly generate a
%move in return. After the player's 3rd choice, the code begins checking
%for win conditions to see if either the player or computer has won the
%game by getting 3 in a row.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Reset Board
clc

%Welcome Message
welcome = input('Welcome to Tic Tac Toe. Would you like to play? (Yes or No):','s');
if strcmpi(welcome, 'Yes')
    disp('Here is how you play: It is recommended you play this game with the MATLAB window not open to')
    disp('full size(screen should be slightly minimized) in order to see the board while you make your')
    disp('moves. The Tic Tac Toe board displayed consists of 9 open spaces. When it is your turn you wil')
    disp('be asked to input a whole number 1 through 9. If you enter the number 1, it will make your move')
    disp('go in the top right corner. Number 2 is the top middle space. Number 3 is the top right space. ')
    disp('Number 4 is the far left space in the middle row. Number 5 is the very middle space in the middle')
    disp('row. Number 6 is the far right space in the middle row. Number 7 is the bottom left space. Number')
    disp('8 is the bottom middle space. Number 9 is the bottom right space. The object of the game is to')
    disp('get 3 in a row either up and down, left to right, or diagnolly. You will be "X" and the computer')
    disp('will be "O".')
elseif strcmpi(welcome, 'No')
    disp('Come back when you would like to play')
    return
else
    welcome = input('Please type "Yes" or "No" :', 's');
    if strcmpi(welcome, 'Yes')
        disp('Here is how you play: It is recommended you play this game with the MATLAB window not open to')
    disp('full size(screen should be slightly minimized) in order to see the board while you make your')
    disp('moves. The Tic Tac Toe board displayed consists of 9 open spaces. When it is your turn you wil')
    disp('be asked to input a whole number 1 through 9. If you enter the number 1, it will make your move')
    disp('go in the top right corner. Number 2 is the top middle space. Number 3 is the top right space. ')
    disp('Number 4 is the far left space in the middle row. Number 5 is the very middle space in the middle')
    disp('row. Number 6 is the far right space in the middle row. Number 7 is the bottom left space. Number')
    disp('8 is the bottom middle space. Number 9 is the bottom right space. The object of the game is to')
    disp('get 3 in a row either up and down, left to right, or diagnolly. You will be "X" and the computer')
    disp('will be "O".')
    elseif strcmpi(welcome, 'No')
        disp('Come back when you would like to play')
        return
    else
        disp('You have not entered an accepted word too many times. Try back later.')
        return
    end
end

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


%Player's 1st move
playerMove1 = input('Enter your move [1-9] :');

if ismember(playerMove1, moves)
else
    playerMove1 = input('Please pick an integer 1 through 9. Try again :');
end

if ismember(playerMove1, moves)
else
    disp('You''ve input an invalid number too many times. Game Over.')
    close Figure 1
    return
    
end

if playerMove1 == 1
         x = 1;
         y = 3;
    elseif playerMove1 == 2
         x = 2;
         y = 3;
    elseif playerMove1 == 3
        x = 3;
        y = 3;
    elseif playerMove1 == 4
        x = 1;
        y = 2;
    elseif playerMove1 == 5
        x = 2;
        y = 2;
    elseif playerMove1 == 6
        x = 3;
        y = 2;
    elseif playerMove1 == 7
        x = 1;
        y = 1;
    elseif playerMove1 == 8
        x = 2;
        y = 1;
    elseif playerMove1 == 9
        x = 3;
        y = 1;
end


text(x,y,'X','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove1];
possMoves = setdiff(moves,usedMoves);

%Compuer's 1st move
cpuMove1 = randsample(possMoves, 1);

if cpuMove1 == 1
    x = 1;
    y = 3;
elseif cpuMove1 == 2
    x = 2;
    y = 3;
elseif cpuMove1 == 3
    x = 3;
    y = 3;
elseif cpuMove1 == 4
    x = 1;
    y = 2;
elseif cpuMove1 == 5
    x = 2;
    y = 2;
elseif cpuMove1 == 6
    x = 3;
    y = 2;
elseif cpuMove1 == 7
    x = 1;
    y = 1;
elseif cpuMove1 == 8
    x = 2;
    y = 1;
elseif cpuMove1 == 9
    x = 3;
    y = 1;
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove1, cpuMove1];
possMoves = setdiff(moves,usedMoves);

%Player's 2nd move
playerMove2 = input('Enter your move [1-9] :');

if ismember(playerMove2,usedMoves)
    playerMove2 = input('Please pick a spot that is not already taken. Try again:');
end

if ismember(playerMove2,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    close Figure 1
    return
end

if ismember(playerMove2, moves)
else
    playerMove2 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove2, moves)
else
    disp('You''ve input an invalid number too many times. Game Over.')
    close Figure 1
    return
    
end

if playerMove2 == 1
    x = 1;
    y = 3;
elseif playerMove2 == 2
    x = 2;
    y = 3;
elseif playerMove2 == 3
    x = 3;
    y = 3;
elseif playerMove2 == 4
    x = 1;
    y = 2;
elseif playerMove2 == 5
    x = 2;
    y = 2;
elseif playerMove2 == 6
    x = 3;
    y = 2;
elseif playerMove2 == 7
    x = 1;
    y = 1;
elseif playerMove2 == 8
    x = 2;
    y = 1;
elseif playerMove2 == 9
    x = 3;
    y = 1;
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2];
possMoves = setdiff(moves,usedMoves);

%Compuer's 2nd move
cpuMove2 = randsample(possMoves,1);

if cpuMove2 == 1
    x = 1;
    y = 3;
elseif cpuMove2 == 2
    x = 2;
    y = 3;
elseif cpuMove2 == 3
    x = 3;
    y = 3;
elseif cpuMove2 == 4
    x = 1;
    y = 2;
elseif cpuMove2 == 5
    x = 2;
    y = 2;
elseif cpuMove2 == 6
    x = 3;
    y = 2;
elseif cpuMove2 == 7
    x = 1;
    y = 1;
elseif cpuMove2 == 8
    x = 2;
    y = 1;
elseif cpuMove2 == 9
    x = 3;
    y = 1;
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2];
possMoves = setdiff(moves,usedMoves);

%Player's 3rd move
playerMove3 = input('Enter your move [1-9] :');

if ismember(playerMove3,usedMoves)
    playerMove3 = input('Please pick a spot that is not already taken. Try again:');
end

if ismember(playerMove3,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    close Figure 1
    return
end

if ismember(playerMove3, moves)
else
    playerMove3 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove3, moves)
else
    disp('You''ve input an invalid number too many times. Game Over.')
    close Figure 1
    return
end

if playerMove3 == 1
    x = 1;
    y = 3;
elseif playerMove3 == 2
    x = 2;
    y = 3;
elseif playerMove3 == 3
    x = 3;
    y = 3;
elseif playerMove3 == 4
    x = 1;
    y = 2;
elseif playerMove3 == 5
    x = 2;
    y = 2;
elseif playerMove3 == 6
    x = 3;
    y = 2;
elseif playerMove3 == 7
    x = 1;
    y = 1;
elseif playerMove3 == 8
    x = 2;
    y = 1;
elseif playerMove3 == 9
    x = 3;
    y = 1;
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

%Check win conditions
playerMoves = [playerMove1, playerMove2, playerMove3];

if ismember([1,2,3],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
elseif ismember([4,5,6],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
elseif ismember([7,8,9],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
elseif ismember([1,4,7],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
elseif ismember([2,5,8],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
elseif ismember([3,6,9],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
elseif ismember([1,5,9],playerMoves)
    disp('Congratuations! You Won!')
    close Figure 1
    return
elseif ismember([3,5,7],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
end

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2, playerMove3];
possMoves = setdiff(moves,usedMoves);

%Compuer's 3rd move
cpuMove3 = randsample(possMoves,1);

if cpuMove3 == 1
    x = 1;
    y = 3;
elseif cpuMove3 == 2
    x = 2;
    y = 3;
elseif cpuMove3 == 3
    x = 3;
    y = 3;
elseif cpuMove3 == 4
    x = 1;
    y = 2;
elseif cpuMove3 == 5
    x = 2;
    y = 2;
elseif cpuMove3 == 6
    x = 3;
    y = 2;
elseif cpuMove3 == 7
    x = 1;
    y = 1;
elseif cpuMove3 == 8
    x = 2;
    y = 1;
elseif cpuMove3 == 9
    x = 3;
    y = 1;
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

%Check win conditions
cpuMoves = [cpuMove1, cpuMove2, cpuMove3];

if ismember([1,2,3],cpuMoves)
   disp('You lost. Better luck next time.')
   pause(3)
   close Figure 1
   return
elseif ismember([4,5,6],cpuMoves)
   disp('You lost. Better luck next time.')
   pause(3)
   close Figure 1
   return
elseif ismember([7,8,9],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
   return
elseif ismember([1,4,7],cpuMoves)
   disp('You lost. Better luck next time.')
   pause(3)
   close Figure 1
   return
elseif ismember([2,5,8],cpuMoves)
   disp('You lost. Better luck next time.')
   pause(3)
   close Figure 1
   return
elseif ismember([3,6,9],cpuMoves)
   disp('You lost. Better luck next time.')
   pause(3)
   close Figure 1
   return
elseif ismember([1,5,9],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
   close Figure 1
   return
elseif ismember([3,5,7],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
   close Figure 1
   return
end

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2, playerMove3, cpuMove3];
possMoves = setdiff(moves,usedMoves);


%Player's 4th move
playerMove4 = input('Enter your move [1-9] :');

if ismember(playerMove4,usedMoves)
    playerMove4 = input('Please pick a spot that is not already taken. Try again:');
end

if ismember(playerMove4,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    close Figure 1
    return
end

if ismember(playerMove4, moves)
else
    playerMove4 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove4, moves)
else
    disp('You''ve input an invalid number too many times. Game Over.')
    close Figure 1
    return
end

if playerMove4 == 1
    x = 1;
    y = 3;
elseif playerMove4 == 2
    x = 2;
    y = 3;
elseif playerMove4 == 3
    x = 3;
    y = 3;
elseif playerMove4 == 4
    x = 1;
    y = 2;
elseif playerMove4 == 5
    x = 2;
    y = 2;
elseif playerMove4 == 6
    x = 3;
    y = 2;
elseif playerMove4 == 7
    x = 1;
    y = 1;
elseif playerMove4 == 8
    x = 2;
    y = 1;
elseif playerMove4 == 9
    x = 3;
    y = 1;
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

%Check win conditions

playerMoves = [playerMove1, playerMove2, playerMove3, playerMove4];

if ismember([1,2,3],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
elseif ismember([4,5,6],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
elseif ismember([7,8,9],playerMoves)
     disp('Congratuations! You Won!')
    close Figure 1
    pause(3)
    return
elseif ismember([1,4,7],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
elseif ismember([2,5,8],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
elseif ismember([3,6,9],playerMoves)
     disp('Congratuations! You Won!')
    close Figure 1
    return
elseif ismember([1,5,9],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
elseif ismember([3,5,7],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
end

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2, playerMove3, cpuMove3, playerMove4];
possMoves = setdiff(moves,usedMoves);

%Compuer's 4th move
cpuMove4 = randsample(possMoves,1);

if cpuMove4== 1
    x = 1;
    y = 3;
elseif cpuMove4 == 2
    x = 2;
    y = 3;
elseif cpuMove4 == 3
    x = 3;
    y = 3;
elseif cpuMove4 == 4
    x = 1;
    y = 2;
elseif cpuMove4 == 5
    x = 2;
    y = 2;
elseif cpuMove4 == 6
    x = 3;
    y = 2;
elseif cpuMove4 == 7
    x = 1;
    y = 1;
elseif cpuMove4 == 8
    x = 2;
    y = 1;
elseif cpuMove4 == 9
    x = 3;
    y = 1;
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

%Check win conditions
cpuMoves = [cpuMove1, cpuMove2, cpuMove3, cpuMove4];

if ismember([1,2,3],cpuMoves)
    disp('You lost. Better luck next time.')
    close Figure 1
    return
elseif ismember([4,5,6],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    return
elseif ismember([7,8,9],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    return
elseif ismember([1,4,7],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    return
elseif ismember([2,5,8],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    return
elseif ismember([3,6,9],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    return
elseif ismember([1,5,9],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    return
elseif ismember([3,5,7],cpuMoves)
     disp('You lost. Better luck next time.')
     pause(3)
    close Figure 1
    return
end

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2, playerMove3, cpuMove3, playerMove4, cpuMove4];
possMoves = setdiff(moves,usedMoves);

%Player's 5th move
playerMove5 = input('Enter your move [1-9] ');

if ismember(playerMove5,usedMoves)
    playerMove2 = input('Please pick a spot that is not already taken. Try again:');
end

if ismember(playerMove5,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    close Figure 1
    return
end

if ismember(playerMove5, moves)
else
    playerMove5 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove5, moves)
else
    disp('You''ve input an invalid number too many times. Game Over.')
    close Figure 1
    return
end

if playerMove5 == 1
    x = 1;
    y = 3;
elseif playerMove5 == 2
    x = 2;
    y = 3;
elseif playerMove5 == 3
    x = 3;
    y = 3;
elseif playerMove5 == 4
    x = 1;
    y = 2;
elseif playerMove5 == 5
    x = 2;
    y = 2;
elseif playerMove5 == 6
    x = 3;
    y = 2;
elseif playerMove5 == 7
    x = 1;
    y = 1;
elseif playerMove5 == 8
    x = 2;
    y = 1;
elseif playerMove5 == 9
    x = 3;
    y = 1;
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

%Check win conditions
playerMoves = [playerMove1, playerMove2, playerMove3, playerMove4, playerMove5];

if ismember([1,2,3],playerMoves)
    disp('Congratuations! You Won!')
    pause(3)
    close Figure 1
    return
elseif ismember([4,5,6],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
     close Figure 1
     return
elseif ismember([7,8,9],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
   close Figure 1
    return
elseif ismember([1,4,7],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
elseif ismember([2,5,8],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
elseif ismember([3,6,9],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
elseif ismember([1,5,9],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
elseif ismember([3,5,7],playerMoves)
     disp('Congratuations! You Won!')
     pause(3)
    close Figure 1
    return
end

disp('Cat''s game. Try again.')
pause(3)
close Figure 1

    

