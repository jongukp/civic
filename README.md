Google_civic_api_validation
====================

## OSX SETUP
### Prereqs
* Ruby 2.6.4
* Cucumber
* Bundler
* Google API Key (add api keys in [common_var.rb](/lib/common_var.rb) file. CIVIC_API_KEY = 'replace_your_key'
#### How to set up Ruby
* `brew install rbenv ruby-build`
* `rbenv install 2.6.4`
* `rbenv global 2.6.4`
#### How to install bundler
* `gem install bundler`
#### How to install cucumber
* `gem install cucumber`
#### How to generate Google API Keys
* go to [Civic Information page](https://developers.google.com/civic-information/docs/using_api)
* Click API Key link
* Click dropdown menu, "Credentials" and select "API Keys"

### How to run the project
* To install all the required gems
```
bundle
```
* To run the tests
```
cucumber
```