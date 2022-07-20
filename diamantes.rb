exp = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"

def extracao_de_diamantes(exp)
  exp.gsub!('.', '')
  puts '- Dimonds without sand'
  puts exp
  puts '=' * 60
  soma_diamantes = 0
  arr_exp = exp.chars
  #p arr_exp
  until arr_exp.join == '>>>>'
    indices = []
    arr_exp.each_with_index do |_, index|
      next unless arr_exp[index] == '<' && arr_exp[index + 1] == '>'
      soma_diamantes += 1
      indices << index
      indices << index + 1
    end
    indices.reverse!.each do |single|
      arr_exp.delete_at(single)
    end
    puts 'counting diamonds...'
    puts soma_diamantes
    puts arr_exp.join
    puts '=' * 60
  end
  puts 'Total Diamonds:'
  soma_diamantes
end

puts extracao_de_diamantes(exp)

# expression = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'

# diamonds = 0

# expression_diamonds = expression.tr('.', '')

# while expression_diamonds.sub!(/<>/, '')
#   puts expression_diamonds
#   diamonds += 1
# end

# puts "Yay! #{diamonds} diamonds have been mined."
