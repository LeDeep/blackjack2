require 'spec_helper'

describe Card do
  context '#initialize' do
    it 'creates an instance of Card' do
      deck = Card.new(2)
      deck.rank.should eq "4"
      deck.suit.should eq "Club"
    end
  end
end