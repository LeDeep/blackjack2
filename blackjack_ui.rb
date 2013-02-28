require './spec/spec_helper'

puts "Welcome! Let's play a game of Blackjack!!"
print "Number of players (1-5): "

number_of_players = gets.chomp.to_i

players = (1..number_of_players).to_a.collect { |id| Player.new('Player ' + id.to_s) }

game = Game.new
deck = Deck.new
house = House.new

deck.deal(house, players)

until game.over?

  puts "House hand is: #{house.shown_card} and [hidden card]"
  players.each {|player| puts "#{player.name}'s hand is: #{player.view_hand}"}

  turn = Turn.new
  until turn.over?
    players.each do |player|
      puts "#{player.name}, do you want a card (y/n)?"
      if gets.chomp == "y"
        player.add_card_to_hand(deck.hit)
        puts "House hand is: #{house.shown_card} and [hidden card]"
        players.each {|player| puts "#{player.name}'s hand is: #{player.view_hand}"}
      end
    end
  end
end

#puts "#{game.winners(players) beat the dealer!}