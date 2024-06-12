 puts "Donnez moi une mot"
 mot = gets.chomp
 puts "Donnez moi une lettre"
 lettre = gets.chomp
 if mot.include? lettre
 	puts "La lettre #{lettre} est inclue dans la mot #{mot}."
 else
 	puts "La lettre #{lettre} n'est pas inclue dans la mot #{mot}."
 end
 