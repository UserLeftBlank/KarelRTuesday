 notes = Array.new(200) { rand(1..100) }
 puts "Entrez une nombre entre 1-100"
 valeur = gets.chomp.to_i
  compte_sup = notes.count { |num| num > valeur}
  compte_inf = notes.count { |num| num < valeur}
  compte_egale = notes.count { |num| num == valeur}
 puts "Il y a #{compte_sup} nombres superior que #{valeur}, #{compte_inf} nombres inferior que #{valeur},
 et #{compte_egale} nombres qui est egale a #{valeur}."