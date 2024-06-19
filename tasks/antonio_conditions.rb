#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
class AntonioConditions < UrRobot

  include Turner
  include SensorPack

  def move
     if front_is_clear?
      super
     end
   end

 end