% User interactions by deciding to hit or stand once cards are drawn

% Automated player is randi command
% Interactive player is input
% Dealer TBA

% below are test values
% deck = [1:52];
% [playerHand, deck] = playerChoice([10 7], deck)

function [playerHand, deck] = playerChoice(playerHand, deck)
    while sum(playerHand) < 21
            choice = input("Do you want to hit or stand? Type 'H' or 'S' ", 's');
            if strcmpi(choice, "H")
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


% function [playerHand, cardDeck] = playerChoice(playerHand, cardDeck)
     % WHILE sum(playerHand) < 21
         % IF sum < 21
             % INPUT Hit or Stand
                     % IF choice is HIT
                         % shuffle card deck
                         % add new random card to playerHand
                         % take card out of deck
 
 
                         % CALL playerHand and use DISP to show ROW ARRAY
                         % VALUE 
 
                         % Will continue to go through loop until sum<21
                                % IF playerHand > 21
                                    % DISP "You're busted! You have: " +
                                    % sum(playerHand)
                                % end
 
                     % ELSE choice is STAND
                         % DISP sum of the playerHand has! 
                         % BREAK --> out!
                   % end
% end 




% AutomatedHand (SIMILAR TO DEALER; MUST BE sum(dealHand) < 17)


% FUNCTION [autoHand, cardDeck] = autoChoice(playerHand, cardDeck)
% while sum(autoHand) < 21
%      Use a RANDOM command to either STAND or HIT
%       IF RANDI < 0.5
        % DISP automated stand! 
%             BREAK; 
%             ELSEIF
                    % SHUFFLE RANDOM CARD from cardDeck
                    % ADD NEW RANDOM CARD to the row array autoHand
                    % REMOVE chosen index from cardDeck
%                 end
%     end
% end
