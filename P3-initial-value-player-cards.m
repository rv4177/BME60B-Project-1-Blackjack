% Assign initial set of cards for each player
function [playerHands, dealerHand] = dealCards(players, deck);
    for n = 1:(player + 1)
        player = [];
        for i = 1:2
            [cards, player] = pick_cards(cards, player);
            break
        end

        if n == 1
            player1 = player;
        elseif n == 2
            player2 = player;
        else 
            dealer = player;
        end

    playerHand = [deck(1), deck(2)];
    dealerHand = [deck(3), deck(4)];
    


    disp(playerHand)
    disp(dealerHand)

end
