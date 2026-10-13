% Create a multi-player interface where one is a real player and 
% the other uses dealer rules
% User prompt to enter number of players

clc; clear

name = input("Welcome to BLACKJACK. What is your name? ", 's');
disp(append("Hello, ", name, "!"))

num_player = input("How many players do you want to play with? Choose between 1 and 5: "); % Prompting the user to choose number of players, between 1 and 5

while num_player < 1 || num_player ~= floor(num_player) || num_player > 5 % Loop ensuring that the user's number input is valid
    num_player = input("Please enter a positive whole number between 1 and 5. ");
end

player_turns = [1:num_player - 1] % Creating an array for all players beside user

% shows user starting hand
% asking user whether they want to hit or stand
% once user stands, the other players play with dealer rules
% output whether the player wins
% loop to allow user to play again
