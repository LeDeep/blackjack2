class House
  attr_reader :hand, :hidden_card

  def initialize
    @hand = []
    @hidden_card = []
  end

  def add_card_to_hand(card)
    @hand << card
  end

  def add_card_to_hidden(card)
    @hidden_card << card
  end

  def shown_card
    @hand.map { |card| if card != 1 then "#{card.rank} of #{card.suit}" end}
 #   @hand.each_with_index { |index| if index != 1 then "#{@hand[index].rank} of #{@hand[index].suit}" end}
 #   @hand.map { |index| if index != 1 then "#{@hand[index].rank} of #{@hand[index].suit}" end}
  end

end