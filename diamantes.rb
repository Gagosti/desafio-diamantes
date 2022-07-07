# def count_sand(express)
#   array_express = express.split('')
#   array_sand = array_express.select { |sand| sand == "." }
#   return array_sand.length
# end

# def count_diamond(express)
#   array_express = express.split('')
#   array_diamond = array_express.select { |diamond| diamond == "<" || diamond == ">" }
#   return count_diamond = array_diamond.length / 2
# end

#puts count_diamond(express), count_sand(express)

exp = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
def extracao_de_diamantes(exp)
  # puts exp
  exp.gsub!('.', '')
  puts '- Dimonds without sand'
  puts exp
  puts '=' * 60
  soma_diamantes = 0
  arr_exp = exp.chars
  # exp.split('')
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
