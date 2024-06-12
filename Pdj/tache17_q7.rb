 valeurs = array = (1..100).to_a
 valeurs.delete(rand(0..99))
 compteur = 1
  while valeurs.include? (compteur)
 	 compteur = compteur + 1
  	end
    puts "La valeur supprimer est #{compteur}!"