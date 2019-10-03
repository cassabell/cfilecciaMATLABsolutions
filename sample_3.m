board = zeros(3,3);
% Draw Board
figure
plot([.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
hold on
plot([.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
plot([1.5 1.5],[-.5 -3.5], 'k','linewidth',2)
plot([2.5 2.5],[-.5 -3.5], 'k','linewidth',2)
hold off
axis on

if 'playerMove1' ~= 1|2|3|4|5|6|7|8|9
    disp('Please pick a number between 1 and 9')
    
end

if ismember(playerMove1, moves)
else
    disp('Pick again')
end