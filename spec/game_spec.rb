require 'spec_helper'

describe Game do
  context '#initialize' do
    it 'creates an instance of Game' do 
      game = Game.new
      game.should be_an_instance_of Game
    end
  end

  context '#over?' do
    it 'returns false' do
      game = Game.new
      game.over?.should be false

    end
  end
end