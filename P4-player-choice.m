% User interactions by deciding to hit or stand once cards are drawn


% below are test values (ignore for real code)
% deck = [1:52];
% [playerHand, deck] = playerChoice([10 7], deck)

function [playerHand, deck] = playerChoice(playerHand, deck)
    while sum(playerHand) < 21
            choice = input("Do you want to hit or stand? Type 'H' or 'S' ", 's');
            if strcmpi(choice, "H")
                index = randi(length(deck));
                playerHand = [playerHand, deck(1)];
                deck(1) = [];
                disp("You have " + sum(playerHand) + "in total.")
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

% autoHand; will be used n times based on how many players entered
% EX if n = 6; we have 4 automated players
% the function will loop for how many n-2 players are input

% Automated player function acts as a 50/50 chance
% Each n-2 automated player will have different responses 

function [autoHand, deck] = autoChoice(autoHand, deck)
    while sum(autoHand) < 21
        if randi < 0.5     % RUNS if # between 0 to 4.99 (auto HIT)
            index = randi(length(deck));
            autoHand = [autoHand, deck(1)];    % add random number from deck
            deck(1) = [];                      % take card away from deck
        else               % RUNS if # between 0.5 to 1.0 (auto STAND)
            break;        
        end

    end
end



function [dealerHand, deck] = dealerHand(dealerHand, deck)
    while sum(dealerHand) < 17
           dealerHand = [dealerHand, deck(1)];
           deck(1) = [];
    end
end



