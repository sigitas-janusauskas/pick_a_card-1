# Подключаем класс карты
require_relative 'card'

# Класс колоды
#
# Может сгенерить колоду с джокерами, перетасовать её выкинуть из колоды
# произвольную или последнюю карту
class Deck
  # Создаем новую колоды
  def initialize
    @cards = []

    # Берем из класса карты все возможные масти и достоинства
    Card::VALUES.each do |value|
      Card::SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end

    # Добавляем двух джокеров
    2.times do
      @cards << Card.new(nil, nil, true)
    end
  end

  # Мешаем колоду
  def shuffle
    # Метод shuffle! произвольным образом перемешивает
    # элементы в массиве
    @cards.shuffle!

    self
  end

  # Метод возвращает произвольную карту (она остается в колоде)
  def random_card
    @cards.sample
  end

  # Метод выкидывает из колоды произвольную карту
  def pop_a_card
    @cards.pop
  end
end
