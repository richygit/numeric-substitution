count = 0
File.readlines('hiragana.txt').each do |line|
  count = count + 1 if (line.nil?  or (line.chomp.size == 0))
  puts "'#{line.chomp}' => #{count}" unless line.chomp.size == 0
end
