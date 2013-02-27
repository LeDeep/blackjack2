require 'spec_helper'

describe Player do
  context '#initialize' do
    it 'creates a new instance of Player' do
      player = Player.new("Player 1")
      player.should be_an_instance_of Player

    end
  end

  context '#name' do
    it 'initializes new player with a player name' do
      player = Player.new("Player 1")
      player.name.should eq 'Player 1'


    end

  end

end
