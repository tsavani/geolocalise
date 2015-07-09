# Geolocalise

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/geolocalise`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/twinks14/geolocalise. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

