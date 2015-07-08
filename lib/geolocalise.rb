require "geolocalise/version"
require 'geocoder'

module Geolocalise
  def self.get_city(location)
    if (location =~ /[[:digit:]]/) == nil
      Geocoder.search(location).first.city
    else
    	check_geo_cords(location) ? Geocoder.search(location).first.city : nil
  	end
  end

  def self.get_country(location)
    if (location =~ /[[:digit:]]/) == nil
      Geocoder.search(location).first.country
    else
    	check_geo_cords(location) ? Geocoder.search(location).first.country : nil
  	end
  end

  def self.get_state(location)
    if (location =~ /[[:digit:]]/) == nil
    	Geocoder.search(location).first.state
    else
      check_geo_cords(location) ? Geocoder.search(location).first.state : nil
  	end
  end

  def self.get_country_code(location)
    if (location =~ /[[:digit:]]/) == nil
    	Geocoder.search(location).first.country_code
    else
      check_geo_cords(location) ? Geocoder.search(location).first.country_code : nil
  	end
  end

  def self.get_postal_code(location)
    if (location =~ /[[:digit:]]/) == nil
    	Geocoder.search(Geocoder.coordinates(location).map(&:inspect).join(',')).first.postal_code
    else
      check_geo_cords(location) ? Geocoder.search(location).first.postal_code : nil
    end
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
end
