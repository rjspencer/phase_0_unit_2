# U2.W5: Virus Predictor

# I worked on this challenge [by myself ].

# EXPLANATION OF require_relative
#
# Gets the STATE_DATA hash from state_data.rb
# Allows updating of that data without access to processing code
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects  # call private methods and return outbreak information
    predicted_deaths()
    speed_of_spread()
  end

  private 
  # predicted_death takes density to determine death rate and multiplies population by death rate to determine the number of deaths (rounded down)
  def predicted_deaths()
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

  # speed_of_spread uses the population density to determine the rate the outbreak will spread
  def speed_of_spread() #in months
    speed = 0.5 if @population_density >= 200
    speed = 1.0 if @population_density >= 150 && @population_density < 200
    speed = 1.5 if @population_density >= 100 && @population_density < 150
    speed = 2.0 if @population_density >= 50  && @population_density < 100
    speed = 2.5 if @population_density <  50

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, state_values|
  #puts "#{state} population density: #{state_values[:population_density]}"
  prediction = VirusPredictor.new(state, state_values[:population_density], state_values[:population], state_values[:region], state_values[:regional_spread]) 
  prediction.virus_effects
end

# REFLECTION

# Refactor of speed_of_spread is debatable.  Every if statement is run, whereas in predicted_deaths the program skips the other elsifs once a match is found.  Therefore, the old code is likely a bit faster.  But... I think the refactor is easier to read.  I chose not to refactor predicted_deaths to show the comparison.

# I tripped up a little on the hash each format.  I originally tried to just grab the key name and reference the sub-hashes off of that.  