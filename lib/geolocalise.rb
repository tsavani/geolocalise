require "geolocalise/version"
require 'geocoder'

module Geolocalise
  # Your code goes here...
  def self.get_city(location)
     #location_is_string(location) ? Geocoder.search(location).first.city : 'Please Enter proper value'
     Geocoder.search(location).first.city 
  end

  def self.get_country(location)
    #location_is_string(location) ? Geocoder.search(location).first.country : 'Please Enter proper value'
    Geocoder.search(location).first.country
  end

  def self.get_state(location)
    #location_is_string(location) ? Geocoder.search(location).first.state : 'Please Enter proper value'
    Geocoder.search(location).first.state
  end

  def self.get_country_code(location)
  	#location_is_string(location) ? Geocoder.search(location).first.country_code : 'Please Enter proper value'
    Geocoder.search(location).first.country_code
  end

  def self.get_postal_code(location)
    check_geo_cords(location) ? Geocoder.search(location).first.postal_code : "Please Enter proper co-ordinates"
  end

  private

    def self.check_geo_cords(location)
      latitude, longitude = location.split(',')[0], location.split(',')[1]
      if latitude.to_i >= -90 and latitude.to_i <= 90 and (latitude =~ /[[:alpha:]]/) == nil
         if longitude.to_i >= -180 and longitude.to_i <= 180 and (longitude =~ /[[:alpha:]]/) == nil
           true
         else
           false
         end
      else
        false
      end
    end

  # 	def self.location_is_string(location)
  # 		 (location =~ /[[:digit:]]/) == nil
  # 	end
end
