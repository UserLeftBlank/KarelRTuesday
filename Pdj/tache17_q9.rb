   puts "Entrez un valeur de temperature"
   celsius = gets.chomp.to_f
   farenheit = celsius * 9 / 5.0 + 32
   puts "#{celsius} celsius converti en farenheit est #{farenheit}"