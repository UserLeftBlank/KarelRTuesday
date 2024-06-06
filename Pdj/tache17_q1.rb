   puts "Entrer le montant de secondes"
   secondes = gets.chomp.to_i
    heures = secondes / 3600
  	secondes_en_minutes = secondes % 3600
    minutes = secondes_en_minutes / 60
    secondes = secondes_en_minutes % 60
   puts "#{heures} heures, #{minutes} minutes, #{secondes} secondes."
   
 
