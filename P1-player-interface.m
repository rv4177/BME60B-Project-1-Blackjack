% Create a multi-player interface where one is a real player and 
% the other uses dealer rules
% User prompt to enter number of players

%% user interface 

clc; clear

name = input("Welcome to BLACKJACK. What is your name? ", 's');
disp(append("Hello, ", name, "!"))

num_player = input("How many players do you want to play with? Choose between 1 and 6: "); % Prompting the user to choose number of players, between 1 and 5

while num_player < 1 || num_player ~= floor(num_player) || num_player > 6 % Loop ensuring that the user's number input is valid
    num_player = input("Please enter a positive whole number between 1 and 6. ");
end

player_turns = [1:num_player] % Creating an array for all players besides the user

%% placing initial bet

initialMoney = 100
bet = input("You currently have $" + initialMoney + ". How much do you want to bet? $" )

while bet < 1 || bet > initialMoney || bet ~= floor(bet)
    if bet > initialMoney
        bet = input("You cannot bet more than you have. Enter a valid bet: $");
    else
        bet = input("Enter a whole-number bet between $1 and $" + initialMoney + ": $");
    end
end

placeBet(initialMoney, bet)

function currentMoney = placeBet(initialMoney, bet)
    currentMoney = initialMoney - bet
    disp("Your current balance is $" + currentMoney)
end

% shows user starting hand
% asking user whether they want to hit or stand
% once user stands, the other players play with dealer rules
% output whether the player wins
% loop to allow user to play again
