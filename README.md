# Geolocalise

Welcome to Geolocalise gem! A Gem which help you to find out current city,state,country,postal-code and country-code with simple methods call. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geolocalise'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geolocalise

## Usage

In your class -

    $ require 'password_mate'

There are mainly five helpers available for Geolocalise usage.
To get city name from latitude and langitude
```ruby
Geolocalise.get_city("19.07598, 72.8776559")
#=> "Mumbai"
``` 

To get state name form city or co-ordinates
```ruby
Geolocalise.get_state("19.07598, 72.8776559")
#=> "Maharashtra"

Geolocalise.get_state("Mumbai")
#=> "Maharashtra"
``` 
To get country name form city or co-ordinates
```ruby
Geolocalise.get_country("19.07598, 72.8776559")
#=> "India"

Geolocalise.get_country("Delhi")
#=> "India"
```

To get country code form city or co-ordinates
```ruby
Geolocalise.get_country_code("19.0759837, 72.8776559")
#=> "IN"

Geolocalise.get_country_code("Ahmedabad")
#=> "IN"
```
To get postal pode form city or co-ordinates
```ruby
Geolocalise.get_postal_code("19.07598, 72.8776559")
#=> "400070"

Geolocalise.get_postal_code("Surat")
#=>"395007"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/twinks14/geolocalise. 

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

:pray: