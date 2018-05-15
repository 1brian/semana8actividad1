puts "Bienvenido"
puts "Presione 1 para ingresar al sub_menu y comenzar"

search = gets.chomp.to_i

file = File.open('productos.txt', 'r')
data = file.readlines
file.close

while search != 6
  case search
  when 1

    puts "1.- Mostrar la existencia por productos."
    puts "2.- Mostrar la existencia total por tienda."
    puts "3.- Mostrar la existencia total en todas las tiendas."
    puts "4.- Volver al menú principal."


    search_sub = gets.chomp.to_i
    case search_sub


    when 1
      #se suma el total por cada producto
      puts data[1].sum {|producto| producto.to_i}

    when 2
      #suma total por cada tienda
      puts "Stock total por tienda"
      data.map(&:strip).sum { |producto| producto.split(",")[1].to_i }

    when 3
      puts data
      break
    end


  when 2
    puts "Lista"
    stock = gets.chomp.to_i
    a = data[stock].sum { |producto| producto[].to_i }
    puts a
  when 3
    data.select { |producto| producto.split(",")[1].strip == "NR" }
  when 4
    b = gets.chomp
    data[a]


  when 5
    puts "Ingrese un nuevo producto"
    prod = gets.chomp
    data.push(prod)
    puts data
  end

end
