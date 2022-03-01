class Company < ApplicationRecord
  belongs_to :city
  has_many :clients

  #Obtaining all the companies from one city using the name of the city

 	def self.city_name(city_name)

 		city = City.find_by_name(city_name)

 		if !city.nil?
 			Company.where(city_id: city.id)
 		end
	end



end
