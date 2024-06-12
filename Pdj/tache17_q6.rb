  nombres = Array.new(200) { rand(0..100) }
 frequence = nombres.inject(Hash.new(0)) {|hash, num| hash[num] += 1 ; hash}
 plus_frequent, compte = frequence.max_by(&:last)

 puts "La nombre #{plus_frequent} est le plus present, il apparait #{compte} fois."
  