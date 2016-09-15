require_relative 'card'

class Deck
  def initialize
    @cards = []

    Card::VALUES.each do |value|
      Card::SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end

    2.times do
      @cards << Card.new(nil, nil, true)
    end
  end

  def shuffle
    @cards.shuffle!

    return self
  end

  def get_random_card
    @cards.sample
  end

  def pop_random_card
    @cards.pop
  end
end
