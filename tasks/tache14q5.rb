  num1 = rand(0..50)
  num2 = rand(0..50)
  puts "valeur 1 est #{num1}, valeur 2 est #{num2}, quel est le somme des deux?"
  i = 0

  while i != num1 + num2
    i = gets.chomp.to_i
    if i  != num1 + num2
      puts "Le reponse est incorrecte, essayez encore!"
     end
   end
  puts "La valeur reponse est #{i}, Bravo!"
