   notes = Array.new(200) { rand(20..100) }
     

   
     moyenne = notes.sum / notes.length
     minimum = notes.min
     maximum = notes.max
   

 puts "La valeur moyenne est #{moyenne}, la valeur minimale des notes est #{minimum}, et la valeur maximale est #{maximum}"