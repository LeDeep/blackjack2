require 'spec_helper'

describe Deck do

  context '#deal' do

    it 'deals cards to all of the players'
  end

  context '#hit' do
    it 'hands out one random card at a time' do
      Array.any_instance.should_receive(:shuffle).and_return((0..51).to_a)
      card = Card.new(0)
      Card.stub(:new).and_return(card)
      deck = Deck.new
      deck.hit.should eq card
    end
  end
end