% User interactions by deciding to hit or stand once cards are drawn
% will add more comments soon lol

%% 

% below are test values (ignore for real code)
deck = [1:52];
[playerHand, deck] = playerChoice([10 7], deck)
[autoHand, deck] = autoChoice([], deck)
[dealerHand, deck] = dealerChoice([], deck)

%% 

% Active Player (User Input) 

function [playerHand, deck] = playerChoice(playerHand, deck)
while sum(playerHand) < 21
    choice = input("Do you want to hit or stand? Type 'H' or 'S' ", 's');
    if strcmpi(choice, "H")              
        playerHand = [playerHand, deck(1)];          % select random card (index) from deck and add to player hand
        deck(1) = [];                                % remove card from deck
        % disp("You have " + sum(playerHand) + " in total.")
            if sum(playerHand) > 21
                disp("You are busted! You have " + sum(playerHand) + " in total.")
            else 
                disp("You have " + sum(playerHand) + " in total.")
            end
    else
        disp(playerHand);
        break;
    end

end

end

%%

% Automated Player

% autoHand; will be used n times based on how many players entered
% EX if n = 6; we have 4 automated players
% the function will loop for how many n-2 players are input

% Automated player function acts as a 50/50 chance
% Each n-2 automated player will have different responses 

function [autoHand, deck] = autoChoice(autoHand, deck)
while sum(autoHand) < 21
    if rand < 0.5     % RUNS if # between 0 to 4.99 (auto HIT)
        autoHand = [autoHand, deck(1)];    % add random number from deck
        deck(1) = [];       % take card away from deck
    else               % RUNS if # between 0.5 to 1.0 (auto STAND)
        disp(autoHand)
        disp("Automated player stands! They had " + sum(autoHand) + " in total.")
        break;         % automated player STANDS
    end

end
end

%%

% Dealer

function [dealerHand, deck] = dealerChoice(dealerHand, deck)
while sum(dealerHand) < 17        % will continue to add random card until BUST 
    % select random card from deck
    dealerHand = [dealerHand, deck(1)];      % add to dealer hand
    deck(1) = [];                            % remove from deck
end
    if sum(dealerHand) > 21
        disp("Dealer busted! They have " + sum(dealerHand) + " in total.")
        return;
    else 
        disp("Dealer stands! They have " + sum(dealerHand) + " in total.")
end


end 
