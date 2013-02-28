class Player
  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def add_card_to_hand(card)
    @hand << card
  end

  def view_hand
    @hand.map { |card| "#{card.rank} of #{card.suit}"}
  end

end