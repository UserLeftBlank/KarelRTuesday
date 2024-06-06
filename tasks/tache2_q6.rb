require 'byebug'

def somme_char(matrice)
	somme = 0
    matrice.each do |mot|
     somme = somme + mot.length
    end
 return somme
 end

arr = ["M.Mark", "Rahenly", "Quinn", "Cameron", "Antonio", "Williams", "Mohamod", "Samuel"]
puts somme_char(arr)