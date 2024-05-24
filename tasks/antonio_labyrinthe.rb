#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack"
require_relative "../mixins/turner"

class AntonioLabyrinthe < UrRobot
  include SensorPack
  include Turner
  
  def run
  	 while !next_to_a_beeper?
  	 end