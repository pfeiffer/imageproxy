source 'https://rubygems.org'

gem "rack"
gem "rack-cache"
gem "mime-types"

group :production do
  gem "unicorn"
end

group :development, :test do
  gem "heroku"
  gem "shotgun"
  gem "rspec"
  gem "rack-test", :require => "rack/test"
  gem "awesome_print"
  gem "jeweler"
end
