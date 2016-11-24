# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  
 
# gives instance initial attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# defining getter methods

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# prints a soultion based on the states individual values
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
  elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    
    

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#print the speed of virus spread based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each{|state_name, population_hash|
  state = VirusPredictor.new(state_name, population_hash[:population_density], population_hash[:population])

    state.virus_effects
  }


#=======================================================================
# Reflection Section
#
# *** I did not understand how to complete Release 7 ****
#
#
# 1 - one uses the hash rocket and the other uses symbols
#
# 2 - Require relative loads a local file 
#
# 3 - That the code was there in the first place.  I spent too long
#     figuring out what it was doing.
#
# 4 - Concept most solidified
#
#