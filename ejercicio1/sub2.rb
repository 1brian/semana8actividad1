def string(*strings)
  file = File.open('saludo.html', 'w') do |f|
    f.write("<html>\n")
    f.write("<head>\n<title> Mi titulo</title>\n</head>\n")
    f.write("<body>\n")

    strings.each { |string| f.write("<p>#{string}</p>\n")}

    f.write("</body>\n")
  file.close
end
end
