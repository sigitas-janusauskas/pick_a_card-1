# encoding: utf-8
# tai programa apie kortas

# Подключаем класс колоды
require_relative 'lib/deck'

# Выводим приветствие
# apie progr pradzia
puts 'Pick a Card. (c) goodprogrammer.ru'
puts 'kodas su OOP'

# Создаем новую колоду и сразу её перемешиваем
deck = Deck.new.shuffle

# Спрашиваем у пользователя, сколько ему надо карт
puts 'How many cards do you pick?'
number = STDIN.gets.to_i

# Нужное число раз выкидываем из колоды последню карту
puts
number.times do
  puts deck.pop_a_card
end
