# Gema

In this gem you will find various TDD (spec/gema_spec.rb) related to our main class (alimento.rb).

TDD's done:
    -Get food name method.
    -Proteins attribute.
    -Carbohydrates attribute.
    -Lipids attribute.
    -@name method.
    -@proteins method.
    -@Carbohydrates method.
    -@Lipids method.
    -to_s method.
    -@kcal method.
    
 First $ gem install bundle
 To create our project hierarchy $ bundle gem gema.
 This command created a variaty of directories and files.
 
  /bin/console -> Initialize the interpreter if needed.
  
  /lib -> Classes
  
  /lib/gem.rb -> Module of our gem
  
  /spec -> TDD
  
  .gitignore
  
  .rspec
  
  .travis.yml
  
  CODE_OF_CONDUCT.md
  
  Gemfile -> Dscribes the gem dependencies required to execute associated Ruby code.
  
  LICENSE.txt
  
  README.md
  
  Rakefile
  
  gema
  
  gema.gemspec -> Contains the information of a gem.
 
 Then we modify gema.gemspec
 
 And then we used $ git remote add p6 https://github.com/ULL-ESIT-LPP-1718/tdd-alu0100902341
 
 to enable the push function.
 
 For every TDD we commited and pushed.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gema'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gema

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gema. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Gema project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/gema/blob/master/CODE_OF_CONDUCT.md).
