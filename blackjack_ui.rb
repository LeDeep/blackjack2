require './spec/spec_helper'

puts "Welcome! Let's play a game of Blackjack!!"
print "Number of players (1-5): "

number_of_players = gets.chomp.to_i

players = (1..number_of_players).to_a.collect { |id| Player.new('Player ' + id.to_s) }

game = Game.new
deck = Deck.new

#deal initial hands to all players

until game.over?

  turn = Turn.new
  # deal initial hands

  until turn.over?
    players.each do |player|
      puts "Do you want a card (y/n)?"
      if get.chomp == "y"
        #deal a card
      end
    end
  end
end

#puts "#{game.winners(players) beat the dealer!}