require 'spec_helper'

describe Player do
  context '#initialize' do
    it 'creates a new instance of Player' do
      player = Player.new("Player 1")
      player.should be_an_instance_of Player
    end
  end

  context '#name' do
    it 'returns a player name' do
      player = Player.new("Player 1")
      player.name.should eq 'Player 1'
    end
  end

  context '#hand' do
    it 'is empty for a new player' do
      player = Player.new("Player 1")
      player.hand.should eq []
    end

    it 'returns the cards it has been dealt' do
      player = Player.new("Player 1")
      card = Card.new(0)
      player.add_card_to_hand(card)
      player.hand.should eq [card]
    end
  end

  context '#add_card_to_hand' do
    it 'adds a card to a player hand' do
      player = Player.new("Player 1")
      card = Card.new(0)
      player.add_card_to_hand(card).should eq [card]
    end
  end

  context '#view_hand' do
    it 'presents a view of the cards in the hand with address info removed' do
      player = Player.new("Player 1")
      card = Card.new(0)
      player.add_card_to_hand(card)
      player.view_hand.should eq ["2 of Spades"]
    end
  end
end
