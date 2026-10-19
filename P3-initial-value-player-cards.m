% Assign initial set of cards for each player

% Creates a random deck of 52 cards from 4 suits  
function shuffledDeck = createRandomDeck()
    shuffledDeck = deck(randperm(52));
end

dealerHand = [deck(3), deck(4)];

% Deal two cards to user
playerHand = [deck(1), deck(2)];   
deck(1:2) = []; % Removes selected cards from the deck

% Displays starting hand to player
disp("Your starting hand: " + num2str(playerHand))

% Initializes an empty array and prepares to deal cards to other players
otherPlayerHands = {};

for n = 1 : num_player % Loop iterating through each player
    otherPlayerHands{n} = [deck(1), deck(2)]; % Creating an array with two cards from the top of the deck for the player
    deck(1:2) = []; % Removing first two cards from the deck 
    oPlayer = num2str(otherPlayerHands{n}); % Converting the array into a string
    disp(strcat("Player ", num2str(n+1),"'s hand: ", oPlayer)); % Displaying the other player's cards
end
