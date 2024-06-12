 valeurs = Array.new(50) { rand(0..100) }
 valeurs.delete(valeurs.max)
 valeur_max = valeurs.max
 puts "La deuxieme plus grand valeur est #{valeur_max}."
 