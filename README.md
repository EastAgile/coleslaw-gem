# Coleslaw Gem

ColeslawApp (http://www.coleslawapp.com) is an easy and sexy way to
share your hard built Cucumber (Ruby) or Lettuce (Python) features file
with your product owner and may be the world.

## Installation

Add this line to your application's Gemfile:

    gem 'coleslaw-gem'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coleslaw

## Usage

### Get your secret key
  Visit http://www.coleslawapp.com and register an account there. You
may also want to create a project in order to have a project id.

Then visit https://www.coleslawapp.com/api_tokens and copy your secret
token.
### Upload the tests
By default, coleslaw assume that your .feature file is in features/
folder and your .xml test result file is in features/reports/. You can
customize these with --features-dir and --reports-dir.

Now run:
  $ bundle exec coleslaw --token [Your secret token here] [Project Id]

And viola, tests will be uploaded to Coleslaw and rendered. Visit
https://www.coleslawapp.com/products and start browing your uploaded
tests.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
