require 'spec_helper'

describe Geolocalise do
  it 'has a version number' do
    expect(Geolocalise::VERSION).not_to be nil
  end

  # Testing geolocalise for return exact city name when input in [geocords or city name]
  it "should return city" do
    Geolocalise.get_city("19.07598, 72.8776559").should == "Mumbai"
  end

  it "should return error" do 
    Geolocalise.get_city("19.075as, Mumbai").should == nil
  end

   # Testing geolocalise and should return exact state name when input in [geocords or city,state name]
  it "should return state" do
    Geolocalise.get_state("Mumbai").should == "Maharashtra"
  end

  it "should return state error" do 
    Geolocalise.get_state("Mumbai, 72.8776559").should == nil
  end

  it "should return state by coords" do 
    Geolocalise.get_state("19.07598, 72.8776559").should == "Maharashtra"
  end

    # Testing geolocalise and should return exact country name when input in [geocords or city,state name]
  it "should return country" do
    Geolocalise.get_country("19.0759837, 72.8776559").should == "India"
  end

  it "should return country error" do 
    Geolocalise.get_state("Gujarat, 72.8776559").should == nil
  end

  it "should return country by coords" do 
    Geolocalise.get_state("19.07598, 72.8776559").should == "Maharashtra"
  end

    # Testing geolocalise and should return exact Country Code when input as [geocords or city,state and country name]
  it "should return get country code" do
    Geolocalise.get_country_code("19.0759837, 72.8776559").should == "IN"
  end

  it "should return country error" do 
    Geolocalise.get_country_code("Gujarat, 72.8776559").should == nil
  end

  it "should return country by coords" do 
    Geolocalise.get_country_code("19.07598, 72.8776559").should == "IN"
  end

   # Testing geolocalise and should return exact Country Code when input as [geocords or city,state and country name]
  it "should return get postal code" do
    Geolocalise.get_postal_code("Surat").should == "395007"
  end
  
  it "should return postal cords by coords" do 
    Geolocalise.get_postal_code("19.07598, 72.8776559").should == "400070"
  end

  it "should return erorr when cords is not proper" do 
    Geolocalise.get_postal_code("19.07598, mumbai").should == nil
  end
end
