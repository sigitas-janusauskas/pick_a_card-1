class Card
  # Массивы с наборами мастей и достоинств
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = %w(Diamonds Hearts Clubs Spades) # Буби, Черви, Крести, Пики

  def initialize(value, suit, joker = false)
    @value = value
    @suit = suit
    @joker = joker
  end

  def to_s
    @joker ? 'Joker' : "#{@value}#{@suit[0].downcase}"
  end
end
