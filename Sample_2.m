
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 3: Tic Tac Toe Game
% Cassie Fileccia
% Due: September 30, 2019
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%This code allows a user to play a game of Tic Tac Toe against a computer

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Reset Board
clc

%Welcome Message
%blah blah
%
%
%
%

figure('Name', 'Tic Tac Toe')
hold on
plot([.5 3.5],[1.5 1.5], 'k')
plot([.5 3.5],[2.5 2.5], 'k')
plot([1.5 1.5],[.5 3.5], 'k')
plot([2.5 2.5],[.5 3.5], 'k')
axis off
hold off

moves = [1:9]
usedMoves = []

%Player's 1st move
playerMove1 = input('Enter your move [1-9] :');

if ismember(playerMove1, moves)
else
    playerMove1 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove1, moves)
else
    disp('You''ve input an invalid number too many times. Game Over')
    return
end

if playerMove1 == 1
         x = 1
         y = 3
    elseif playerMove1 == 2
         x = 2
         y = 3
    elseif playerMove1 == 3
        x = 3
        y = 3
    elseif playerMove1 == 4
        x = 1
        y = 2
    elseif playerMove1 == 5
        x = 2
        y = 2
    elseif playerMove1 == 6
        x = 3
        y = 2
    elseif playerMove1 == 7
        x = 1
        y = 1
    elseif playerMove1 == 8
        x = 2
        y = 1
    elseif playerMove1 == 9
        x = 3
        y = 1
    end


text(x,y,'X','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove1]
possMoves = setdiff(moves,usedMoves)

%Compuer's 1st move
cpuMove1 = randsample(possMoves, 1);

if cpuMove1 == 1
    x = 1
    y = 3
elseif cpuMove1 == 2
    x = 2
    y = 3
elseif cpuMove1 == 3
    x = 3
    y = 3
elseif cpuMove1 == 4
    x = 1
    y = 2
elseif cpuMove1 == 5
    x = 2
    y = 2
elseif cpuMove1 == 6
    x = 3
    y = 2
elseif cpuMove1 == 7
    x = 1
    y = 1
elseif cpuMove1 == 8
    x = 2
    y = 1
elseif cpuMove1 == 9
    x = 3
    y = 1
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove1, cpuMove1]
possMoves = setdiff(moves,usedMoves)

%Player's 2nd move
playerMove2 = input('Enter your move [1-9] ');

if ismember(playerMove2,usedMoves)
    disp('Please pick a spot that is not already taken.')
    playerMove2 = input('Enter your move [1-9] ');
end

if ismember(playerMove2,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    return 
end

if ismember(playerMove2, moves)
else
    playerMove2 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove2, moves)
else
    disp('You''ve input an invalid number too many times. Game Over')
    return
end

if playerMove2 == 1
    x = 1
    y = 3
elseif playerMove2 == 2
    x = 2
    y = 3
elseif playerMove2 == 3
    x = 3
    y = 3
elseif playerMove2 == 4
    x = 1
    y = 2
elseif playerMove2 == 5
    x = 2
    y = 2
elseif playerMove2 == 6
    x = 3
    y = 2
elseif playerMove2 == 7
    x = 1
    y = 1
elseif playerMove2 == 8
    x = 2
    y = 1
elseif playerMove2 == 9
    x = 3
    y = 1
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2]
possMoves = setdiff(moves,usedMoves)

%Compuer's 2nd move
cpuMove2 = randsample(possMoves,1);

if cpuMove2 == 1
    x = 1
    y = 3
elseif cpuMove2 == 2
    x = 2
    y = 3
elseif cpuMove2 == 3
    x = 3
    y = 3
elseif cpuMove2 == 4
    x = 1
    y = 2
elseif cpuMove2 == 5
    x = 2
    y = 2
elseif cpuMove2 == 6
    x = 3
    y = 2
elseif cpuMove2 == 7
    x = 1
    y = 1
elseif cpuMove2 == 8
    x = 2
    y = 1
elseif cpuMove2 == 9
    x = 3
    y = 1
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2]
possMoves = setdiff(moves,usedMoves)

%Player's 3rd move
playerMove3 = input('Enter your move [1-9] ');

if ismember(playerMove3,usedMoves)
    disp('Please pick a spot that is not already taken.')
    playerMove2 = input('Enter your move [1-9] ');
end

if ismember(playerMove3,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    return 
end

if ismember(playerMove3, moves)
else
    playerMove3 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove3, moves)
else
    disp('You''ve input an invalid number too many times. Game Over')
    return
end

if playerMove3 == 1
    x = 1
    y = 3
elseif playerMove3 == 2
    x = 2
    y = 3
elseif playerMove3 == 3
    x = 3
    y = 3
elseif playerMove3 == 4
    x = 1
    y = 2
elseif playerMove3 == 5
    x = 2
    y = 2
elseif playerMove3 == 6
    x = 3
    y = 2
elseif playerMove3 == 7
    x = 1
    y = 1
elseif playerMove3 == 8
    x = 2
    y = 1
elseif playerMove3 == 9
    x = 3
    y = 1
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

%Check win conditions
playerMoves = [playerMove1, playerMove2, playerMove3]

if ismember([1,2,3],playerMoves)
    disp('Congratuations! You Won!')
    return
elseif ismember([4,5,6],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([7,8,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([1,4,7],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([2,5,8],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([3,6,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([1,5,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([3,5,7],playerMoves)
     disp('Congratuations! You Won!')
    return
end

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2, playerMove3]
possMoves = setdiff(moves,usedMoves)

%Compuer's 3rd move
cpuMove3 = randsample(possMoves,1);

if cpuMove3 == 1
    x = 1
    y = 3
elseif cpuMove3 == 2
    x = 2
    y = 3
elseif cpuMove3 == 3
    x = 3
    y = 3
elseif cpuMove3 == 4
    x = 1
    y = 2
elseif cpuMove3 == 5
    x = 2
    y = 2
elseif cpuMove3 == 6
    x = 3
    y = 2
elseif cpuMove3 == 7
    x = 1
    y = 1
elseif cpuMove3 == 8
    x = 2
    y = 1
elseif cpuMove3 == 9
    x = 3
    y = 1
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

%Check win conditions
cpuMoves = [cpuMove1, cpuMove2, cpuMove3]

if ismember([1,2,3],cpuMoves)
    disp('You lost. Better luck next time.')
    return
elseif ismember([4,5,6],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([7,8,9],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([1,4,7],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([2,5,8],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([3,6,9],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([1,5,9],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([3,5,7],cpuMoves)
     disp('You lost. Better luck next time.')
    return
end

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2, playerMove3, cpuMove3]
possMoves = setdiff(moves,usedMoves)


%Player's 4th move
playerMove4 = input('Enter your move [1-9] ');

if ismember(playerMove4,usedMoves)
    disp('Please pick a spot that is not already taken.')
    playerMove2 = input('Enter your move [1-9] ');
end

if ismember(playerMove4,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    return 
end

if ismember(playerMove4, moves)
else
    playerMove4 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove4, moves)
else
    disp('You''ve input an invalid number too many times. Game Over')
    return
end

if playerMove4 == 1
    x = 1
    y = 3
elseif playerMove4 == 2
    x = 2
    y = 3
elseif playerMove4 == 3
    x = 3
    y = 3
elseif playerMove4 == 4
    x = 1
    y = 2
elseif playerMove4 == 5
    x = 2
    y = 2
elseif playerMove4 == 6
    x = 3
    y = 2
elseif playerMove4 == 7
    x = 1
    y = 1
elseif playerMove4 == 8
    x = 2
    y = 1
elseif playerMove4 == 9
    x = 3
    y = 1
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

%Check win conditions

playerMoves = [playerMove1, playerMove2, playerMove3, playerMove4]

if ismember([1,2,3],playerMoves)
    disp('Congratuations! You Won!')
    return
elseif ismember([4,5,6],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([7,8,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([1,4,7],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([2,5,8],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([3,6,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([1,5,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([3,5,7],playerMoves)
     disp('Congratuations! You Won!')
    return
end

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2, playerMove3, cpuMove3, playerMove4]
possMoves = setdiff(moves,usedMoves)

%Compuer's 4th move
cpuMove4 = randsample(possMoves,1);

if cpuMove4== 1
    x = 1
    y = 3
elseif cpuMove4 == 2
    x = 2
    y = 3
elseif cpuMove4 == 3
    x = 3
    y = 3
elseif cpuMove4 == 4
    x = 1
    y = 2
elseif cpuMove4 == 5
    x = 2
    y = 2
elseif cpuMove4 == 6
    x = 3
    y = 2
elseif cpuMove4 == 7
    x = 1
    y = 1
elseif cpuMove4 == 8
    x = 2
    y = 1
elseif cpuMove4 == 9
    x = 3
    y = 1
end

text(x,y,'O','horizontalalignment','center','fontsize',30)

%Check win conditions
cpuMoves = [cpuMove1, cpuMove2, cpuMove3, cpuMove4]

if ismember([1,2,3],cpuMoves)
    disp('You lost. Better luck next time.')
    return
elseif ismember([4,5,6],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([7,8,9],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([1,4,7],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([2,5,8],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([3,6,9],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([1,5,9],cpuMoves)
     disp('You lost. Better luck next time.')
    return
elseif ismember([3,5,7],cpuMoves)
     disp('You lost. Better luck next time.')
    return
end

usedMoves = [usedMoves, playerMove1, cpuMove1, playerMove2, cpuMove2, playerMove3, cpuMove3, playerMove4, cpuMove4]
possMoves = setdiff(moves,usedMoves)

%Player's 5th move
playerMove1 = input('Enter your move [1-9] ');

if ismember(playerMove2,usedMoves)
    disp('Please pick a spot that is not already taken.')
    playerMove2 = input('Enter your move [1-9] ');
end

if ismember(playerMove2,usedMoves)
    disp('You''ve messed up too many times. Game over.')
    return 
end

if ismember(playerMove5, moves)
else
    playerMove5 = input('Please pick an integer 1 through 9. Try again :')
end

if ismember(playerMove5, moves)
else
    disp('You''ve input an invalid number too many times. Game Over')
    return
end

if playerMove1 == 1
    x = 1
    y = 3
elseif playerMove1 == 2
    x = 2
    y = 3
elseif playerMove1 == 3
    x = 3
    y = 3
elseif playerMove1 == 4
    x = 1
    y = 2
elseif playerMove1 == 5
    x = 2
    y = 2
elseif playerMove1 == 6
    x = 3
    y = 2
elseif playerMove1 == 7
    x = 1
    y = 1
elseif playerMove1 == 8
    x = 2
    y = 1
elseif playerMove1 == 9
    x = 3
    y = 1
end

text(x,y,'X','horizontalalignment','center','fontsize',30)

%Check win conditions
playerMoves = [playerMove1, playerMove2, playerMove3, playerMove4, playerMove5]

if ismember([1,2,3],playerMoves)
    disp('Congratuations! You Won!')
    return
elseif ismember([4,5,6],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([7,8,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([1,4,7],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([2,5,8],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([3,6,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([1,5,9],playerMoves)
     disp('Congratuations! You Won!')
    return
elseif ismember([3,5,7],playerMoves)
     disp('Congratuations! You Won!')
    return
end

disp('Cat''s game. Try again.')

    

