def peli
file = File.open('peliculas.txt', 'r')
movies = file.readlines.map{ |ele| ele.chomp  }.length
file.close
puts movies
end

peli
