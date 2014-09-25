# Coleslaw Gem

ColeslawApp (http://www.coleslawapp.com) is an easy and sexy way to
share your hard built Cucumber (Ruby) or Lettuce (Python) feature files
with your product owner and maybe the world.

## Installation

Add this line to your application's Gemfile:

    gem 'coleslaw'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coleslaw

## Usage

### Configure Cucumber
Add jUnit formatter option in `cucumber.yml` file:

    std_opts = "-r features --format pretty --format junit --out features/reports --strict --tags ~@wip"

The above options will configure Cucumber to generate test report files in folder features/reports.

### Get your secret key
  Visit http://www.coleslawapp.com and register an account there. You
may also want to create a project in order to have a project token.

Then visit https://www.coleslawapp.com/api_tokens and copy your secret
token.

### Upload the tests
By default, coleslaw assume that your .feature file is in features/
folder and your .xml test result file is in features/reports/. You can
customize these with --features-dir and --reports-dir.

Now run:

    $ bundle exec coleslaw --token [Your secret token here] [Project Token]

And viola, tests will be uploaded to Coleslaw and rendered. Visit
https://www.coleslawapp.com/dashboard and start browsing your uploaded
tests.

### Use with CircleCI
If you use your project with CircleCI, you can configure it to upload your tests automatically each time you push your
code to GitHub.

Add the following lines to `circle.yml` file:

    test:
      post:
        - bundle exec coleslaw --token $USER_TOKEN $PROJECT_TOKEN

Configure `$USER_TOKEN` and `$PROJECT_TOKEN` as environment variables in CircleCI Project Settings to secure your credentials.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
