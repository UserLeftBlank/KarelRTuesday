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

  def move
  	 pick_beeper
  	 super
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


    
