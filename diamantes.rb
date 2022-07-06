express = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"

#array_express = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>".split('')
#array_sand = array_express.select { |sand| sand == "." }
#array_sand.length
#array_diamond = array_express.select { |diamond| diamond == "<" || diamond == ">" }
#count_diamond = array_diamond.length / 2

def count_sand(express)
  array_express = express.split('')
  array_sand = array_express.select { |sand| sand == "." }
  return array_sand.length
end

def count_diamond(express)
  array_express = express.split('')
  array_diamond = array_express.select { |diamond| diamond == "<" || diamond == ">" }
  return count_diamond = array_diamond.length / 2
end

puts count_diamond(express), count_sand(express)
