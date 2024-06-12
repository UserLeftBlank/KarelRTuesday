   nombres = Array.new(200) { rand(0..100) }

   nombres.keep_if {|a| a % 2 == 0}
   somme = nombres.sum
   puts "La somme des nombres pairs est #{somme}"
