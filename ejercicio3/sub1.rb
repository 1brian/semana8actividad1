def peli(*strings)
file = File.open('peliculas.txt', 'r')
movies = file.readline
movies.split(', ').map(&:chomp)
puts strings.size
file.close
end

peli('hola')
