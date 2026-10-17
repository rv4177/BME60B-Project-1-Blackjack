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
