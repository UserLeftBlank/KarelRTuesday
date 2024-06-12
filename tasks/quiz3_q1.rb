 matrice = []
 puts "Donnez-moi 5 valeurs numeriques. Je vais les tries pour vous."
 5.times do |i|
 	 matrice << gets.chomp.to_i
    end
 puts "#{matrice.sort}"
