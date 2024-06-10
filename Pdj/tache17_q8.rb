 puts "Donnez moi une mot"
 mot = gets.chomp.to_i
 puts "Donnez moi une lettre"
 lettre = gets.chomp.to_i
 mot.include? lettre
 if true
 	puts "La lettre #{lettre} est inclue dans la mot #{mot}."
 else
 	puts "La lettre #{lettre} n'est pas inclue dans la mot #{mot}."
 end
 