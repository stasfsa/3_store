# encoding: utf-8
#
# Программа-магазин книг и фильмов. Версия 0.4 — с методом класса from_file для
# каждого класса-ребенка (для родителя метод вызывает ошибку)
#
# (с) goodprogrammer.ru
#

require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'

# Считываем наши книгу и фильм из папок data/books и data/films соответственно
current_path = File.dirname(__FILE__)
film = Film.from_file(current_path + '/data/films/01.txt')
book = Film.from_file(current_path + '/data/books/01.txt')

# Выводим их на экран
puts film
puts book

# Пытаемся вызвать метод from_file у класса Product и ловим ошибку
begin
  Product.from_file(current_path + '/data/films/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end



# Программа-магазин книг и фильмов. Версия 0.5 — с классом ProductCollection, который умеет хранить и сортировать коллекцию любых продуктов.
#
# (с) goodprogrammer.ru
#

require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'

# Подключаем класс ProductCollection
require_relative 'lib/product_collection'

# Создаем коллекцию продуктов, передавая методу класса from_dir путь к папке с подпапками films и books. ProductCollection сам знает, как там внутри лежат эти файлы и сам разберется, как их оттуда считать.
collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

# Сортируем продукты по возрастанию цены с помощью метода sort! экземпляра класса ProductCollection
collection.sort!(by: :price, order: :asc)

# Получаем массив продуктов методом to_a и выводим каждый на экран, передавая его методу puts в качестве аргумента.
collection.to_a.each do |product|
  puts product
end