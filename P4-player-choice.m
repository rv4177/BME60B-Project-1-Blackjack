% User interactions by deciding to hit or stand once cards are drawn

% Automated player is randi command
% Interactive player is input
% Dealer TBA



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


% function [autoHand, cardDeck] = autoChoice(playerHand, cardDeck)
% while sum(autoHand) < 21
%      Use a RANDOM command to either STAND or HIT
%       if randi < 0.5
        % PLAYER busted! 
%             break; 
%             elseif
                    % SHUFFLE RANDOM CARD from cardDeck
                    % ADD NEW RANDOM CARD to the row array autoHand
                    % REMOVE chosen index from cardDeck
%                 end
%     end
% end
