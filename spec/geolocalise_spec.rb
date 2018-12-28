require 'spec_helper'

describe Geolocalise do
  before(:example) do
    Geocoder.configure(:timeout => 500)
  end

  it 'has a version number' do
    expect(Geolocalise::VERSION).not_to be nil
  end

  # Testing geolocalise for return exact city name when input in [geocords or city name]
  describe "#city" do
    it "should return city" do
      expect(Geolocalise.get_city("19.07598, 72.8776559")).to  eq("Mumbai")
    end

    it "should return error" do 
      expect(Geolocalise.get_city("19.075as, Mumbai")).to be_nil
    end
  end

  # Testing geolocalise and should return exact state name when input in [geocords or city,state name]
  describe "#state" do
    it "should return state" do
      expect(Geolocalise.get_state("Mumbai")).to  eq("Maharashtra")
    end

    it "should return state error" do 
      expect(Geolocalise.get_state("Mumbai, 72.8776559")).to be_nil
    end

    it "should return state by coords" do 
      expect(Geolocalise.get_state("19.07598, 72.8776559")).to  eq("Maharashtra")
    end
  end

  # Testing geolocalise and should return exact Country name when input in [geocords or city,state name]
  describe "#country" do
    it "should return country" do
      expect(Geolocalise.get_country("Delhi")).to  eq("India")
    end

    it "should return country error" do 
      expect(Geolocalise.get_country("Gujarat, 72.8776559")).to be_nil
    end

    it "should return country by coords" do 
      expect(Geolocalise.get_country("19.07598, 72.8776559")).to  eq("India")
    end
  end

  # Testing geolocalise and should return exact Country Code when input as [geocords or city,state and country name]
  describe "#country_code" do
    it "should return get country code" do
      expect(Geolocalise.get_country_code("New York")).to  eq("us")
    end

    it "should return country error" do 
      expect(Geolocalise.get_country_code("Gujarat, 72.8776559")).to be_nil
    end

    it "should return country by coords" do 
      expect(Geolocalise.get_country_code("19.07598, 72.8776559")).to  eq("in")
    end
  end

  # Testing geolocalise and should return exact Postal Code when input as [geocords or city,state and country name]
  describe "#postal_code" do
    it "should return get postal code" do
      expect(Geolocalise.get_postal_code("New York")).to  eq("10003")
    end

    it "should return postal cords by coords" do
      expect(Geolocalise.get_postal_code("19.07598, 72.8776559")).to  eq("400070")
    end

    it "should return erorr when cords is not proper" do 
      expect(Geolocalise.get_postal_code("19.07598, mumbai")).to be_nil
    end
  end
end
