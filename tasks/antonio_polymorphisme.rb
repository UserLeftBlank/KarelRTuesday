#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/place_x"

  class AntonioH < UrRobot
       def reculer
         turn_left
   	      turn_left
         move
         turn_left
   	     turn_left
         end

     include Turner
     include Place_x

      def ecrit_lettre
         place_5
         reculer
         reculer
         turn_left
         move
         place_3
         turn_right
         move
         put_beeper
         move
         put_beeper
         reculer
         reculer
         reculer
         put_beeper
         reculer
         put_beeper
         end
     end    

   

   class AntonioE < UrRobot

       def move_2
         move
         move
         end

      include Turner
      include Place_x

      def ecrit_lettre
         put_beeper
         move_2
         put_beeper
         move_2
         put_beeper
         turn_right
         move
         turn_right
         put_beeper
         move_2
         put_beeper
         move_2
         put_beeper
         turn_left
         move
         turn_left
         place_5
         end
     end

  class AntonioL < UrRobot

     include Turner
     include Place_x

      def ecrit_lettre
         place_5
         turn_left
   	     move
         put_beeper
         move
         put_beeper
         end
     end
     
    class AntonioO < UrRobot

      include Turner
      include Place_x
       def ecrit_lettre
         place_5
         turn_left
         move
         place_2
         turn_left
         move
         place_4
         turn_left
         move
         put_beeper
         end
     end
    class Gerant
      def tache
      	 karel = AntonioH.new(7, 2, Robota::SOUTH, 12)
         karel2 = AntonioE.new(7, 9, Robota::SOUTH, 11)
         karel3 = AntonioL.new(7, 11, Robota::SOUTH, 7)
         karel4 = AntonioL.new(7, 15, Robota::SOUTH, 7)
         karel5 = AntonioO.new(7, 19, Robota::SOUTH, 14)
         karel.ecrit_lettre
         karel2.ecrit_lettre
         karel3.ecrit_lettre
         karel4.ecrit_lettre
         karel5.ecrit_lettre
         end
     end