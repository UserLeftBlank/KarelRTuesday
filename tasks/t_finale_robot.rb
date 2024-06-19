#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"
require_relative "../mixins/x_variable"

class TFinaleRobot < UrRobot
  include SensorPack
  include Turner
  include XVariable
   
  def put_move(x=1)
  	  x.times do
         put_beeper
  	     move
  	    end
     end
  def pick_move
  	 pick_beeper
  	 move
     end
  
  def put_beeper
  	 if any_beepers_in_beeper_bag?
         super
        end
     end

    def pick_beeper
  	 while next_to_a_beeper?
         super
        end
     end

    def sweep_13x13
     6.times do
         13.times { pick_move }     
         turn_right
     	 move
     	 turn_right
     	 13.times { pick_move } 
     	 turn_left
     	 move
     	 turn_left
        end
     return_to_start
    end

    def return_to_start
     turn_left
     move(12)
     turn_around
    end

    def colonnes
     puts "entrez une nombre de colonnes!"
     i = gets.chomp.to_i
     e = i
      i.times do
      	 put_move(i)
      	 turn_around
      	 move(i)
      	 turn_right
      	 move
      	 turn_right
      	 move
      	 i = i - 1
      	end
     turn_around
     move(e)
     turn_left
     move(e)
     turn_around
     end
    
 end