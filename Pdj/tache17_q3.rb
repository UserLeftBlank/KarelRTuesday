noms = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Ivy", "Jack", "Kate", "Liam", "Mia", "Noah", "Olivia", "Peter", "Quinn", "Rachel", "Sam", "Tina"]
     
    nom = 0
     
    while nom != "q"
        puts "donnez moi une nom, q pour quitter"
        nom = gets.chomp 
        exit if nom == "q"
        if noms.include?(nom)
         puts "Present"
        else
         puts "Absent"
        end
    end
    