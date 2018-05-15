def movie(*strings)
file = File.open('peliculas.txt', 'r')
movies = file.readline
movies.split(', ').map(&:chomp)
puts movies.size
file.close

end

s1 = 'hola'
s2 = 'buena'

movie(s1, s2)
