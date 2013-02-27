class Deck

  def initialize
    @cards = (0..51).to_a.shuffle.collect { |id| Card.new(id) }
  end
 
  def hit
    @cards.pop
  end
end