# Программа-магазин книг и фильмов. Версия 0.3 — с сетерами и методом update
# для родителя и классов-детей Book и Film и методами to_s.
#
# (с) goodprogrammer.ru
#

require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'

# Создадим несколько продуктов и поменяем их с помощью сеттеров и метода update
film = Film.new(title: 'Леон', director: 'Люк Бессон', price: 990)
film.year = 1994
film.update(amount: 5)

book = Book.new(title: 'Идиот', genre: 'роман', amount: 10)
book.author = 'Федька Достоевский'
book.update(author: 'Фёдор Достоевский', price: 1500)

# Выведем результат на экран
puts film
puts book