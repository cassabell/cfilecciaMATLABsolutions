
welcome = input('Welcome to Tic Tac Toe. Would you like to play? (Yes or No):','s')
if strcmpi(welcome, 'Yes')
    disp('Here is how you play')
elseif strcmpi(welcome, 'No')
    disp('Come back when you would like to play')
    return
else
    welcome = input('Please type "Yes" or "No" :', 's')
    if strcmpi(welcome, 'Yes')
        disp('Here is how you play')
    elseif strcmpi(welcome, 'No')
        disp('Come back when you would like to play')
        return
    else
        disp('You have not entered an accepted word too many times. Try back later.')
        return
    end
end

figure('Name', 'Tic Tac Toe');
savefig('TicTacToeBoard');
hold on;
plot([.5 3.5],[1.5 1.5], 'k');
plot([.5 3.5],[2.5 2.5], 'k');
plot([1.5 1.5],[.5 3.5], 'k');
plot([2.5 2.5],[.5 3.5], 'k');
axis off;
hold off;


