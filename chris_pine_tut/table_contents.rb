# building a table of contents
lineWidth = 50
ch = 'Chapter'
pg = 'page'
s = ' '

info_array =  [[1, 'Numbers', 1], [2, 'Letters', 72], [3, 'Variables', 118]]

puts (        'Table of Contents'.center(lineWidth))
puts ''
puts ''
info_array.each do |chapter|
  puts (ch + s + chapter[0].to_s + ': ' + chapter[1]).ljust(lineWidth/2) + (  pg + s + chapter[2].to_s).rjust(lineWidth/2)
end
puts ''
