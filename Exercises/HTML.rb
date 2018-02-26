def paragraph(text)
  "<p>#{text}</p>"
end

def image(source, width = 100, height = 100)
  "<img src='#{source}' width='#{width}' height='#{height}'/>"
end


puts paragraph("Hello, world!")
puts image("puppy.jpg", 800, 600)
