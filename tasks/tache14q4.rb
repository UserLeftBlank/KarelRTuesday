   x = rand(0..100)
   puts "Donnez moi une valeur"
   i = 0
   e = 0
   while i != x
     e = e + 1
     i = gets.chomp.to_i
       if i < x
  		 puts "#{i} est moins que x"       
      else
         puts "#{i} est plus que x"
         end
  end
  puts "La valeur est #{x}, il a vous pris #{e} essaye, Bravo!"
