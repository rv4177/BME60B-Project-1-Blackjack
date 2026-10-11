% Assign value to ace (1 or 11) 
% Shuffling cards 


% Creates an array of one suit of cards
oneSuit = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11];

deck = [oneSuit, oneSuit, oneSuit, oneSuit];

randomOrder = randperm(52);

% Creates a random deck of 52 cards from 4 suits
deck = deck(randomOrder);

playerHand = [deck(1), deck(2)];

% Displays starting hand to player
disp("Your starting hand: ")

disp(playerHand)


% Totals up the sum of the two cards in the player's hand
handTotal = sum(playerHand);

numAces = sum(playerHand == 11);

% Detects if there is an ace in the player hand and if the total is over 21
% and subtracts 10 from the hand if both of these conditions are true
while handTotal > 21 && numAces > 0
    handTotal = handTotal - 10;
    numAces = numAces - 1;      
end
