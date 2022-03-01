class City < ApplicationRecord
  belongs_to :state
  has_many :companies

  #Obtaining the cities from one state using the state id

  def self.state_id(state_id)
  	City.find_by_state_id(state_id)
  end

  #Obtaining the cities from one state using the name of the state

 def self.state_name(state_name)
	state = State.find_by_name(state_name)

 	if !state.nil?
 		City.where(state_id: state.id)
 	end
 end

 end

