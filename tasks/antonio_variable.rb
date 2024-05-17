#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/x_variable"
require_relative "../mixins/turner"

class AntonioVariable < UrRobot
  include XVariable
  include Turner

 end