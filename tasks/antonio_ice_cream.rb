#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/x_variable"

  class AntonioStrawberry < UrRobot
       include XVariable
       include Turner
      def initialize (street, avenue, direction, beepers, color)
         super(street, avenue, direction, beepers, color)
         end

      def ice_cream
         move(3)
         turn_right
         move(5)
         pick_beeper(3)
         turn_around
         move(5)
         turn_left
         move(3)
         put_beeper(3)
         back_up
         end
     end    

   

   class AntonioMint < UrRobot

      include XVariable
       include Turner

      def initialize (street, avenue, direction, beepers, color)
         super(street, avenue, direction, beepers, color)
         end

      def ice_cream
         move(3)
         turn_left
         move(6)
         pick_beeper(4)
         turn_around
         move(6)
         turn_right
         move(3)
         put_beeper(4)
         back_up
         end
     end

  class AntonioVanilla < UrRobot

      include XVariable
      include Turner

      def initialize (street, avenue, direction, beepers, color)
         super(street, avenue, direction, beepers, color)
         end

      def ice_cream
         move(12)
         turn_left
         move(2)
         pick_beeper(2)
         turn_around
         move(2)
         turn_right
         move(12)
         put_beeper(2)
         back_up
         end
     end
     
    class AntonioChocolate < UrRobot

      include XVariable
      include Turner

      def initialize (street, avenue, direction, beepers, color)
         super(street, avenue, direction, beepers, color)
         end

       def ice_cream
         move(4)
         turn_left
         move(3)
         turn_right
         move(4)
         pick_beeper(5)
         turn_around
         move(4)
         turn_left
         move(3)
         turn_right
         move(4)
         put_beeper(5)
         back_up
         end
     end
    class AntonioCookieDough < UrRobot

      include XVariable
      include Turner

      def initialize (street, avenue, direction, beepers, color)
         super(street, avenue, direction, beepers, color)
         end

      def ice_cream
         move(4)
         turn_right
         move(6)
         turn_left
         move(4)
         pick_beeper
         turn_around
         move(4)
         turn_right
         move(6)
         turn_left
         move(4)
         put_beeper
         back_up
         end
     end