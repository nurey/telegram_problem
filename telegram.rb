#!/usr/bin/env ruby

wrap = ARGV.shift.to_i

output = ""

current_column = 0

$stdin.each do |line|
  line.chomp! 
  words = line.split(/\s+/)
  words.each do |word|
    next if word.length == 0
    current_column += word.length + 1
    if current_column <= wrap
      output << "#{word} "
    else 
      output << "\n#{word} "
      current_column = word.length + 1
    end
  end
end

puts output
