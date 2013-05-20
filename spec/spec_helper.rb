"
  Initialize and set up application testing etc
  Create basic twitter omniauth middleware hash
  Running database_cleaner with :truncation for mongoid

"
# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'database_cleaner'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  # config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  # config.infer_base_class_for_anonymous_controllers = false

  OmniAuth.config.test_mode = true

  # generate a valid twitter authentication using my application.yml configuration etc
  OmniAuth.config.mock_auth[:twitter] = {

    :provider => "twitter",
    :uid => ENV['TWITTER_UID'],
    :credentials => {
      :token => ENV['TWITTER_ACCESS_TOKEN'], 
      :secret => ENV['TWITTER_ACCESS_TOKEN_SECRET']
    }
  }

  # determine whether or not to save the elements in the test_db for looking at myself
  config.save = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"

  # initialize our databasecleaner strategy
  DatabaseCleaner.strategy = :truncation

  # initialize before filters for all of our specs which are dependent upon whether or not we want to save db data!
  before do

    if not config.save

      DatabaseCleaner.start
    end
  end

  # only clean up the database afterwards if we are currently in clean mode
  after do

    if not config.save

      DatabaseCleaner.clean

    end
  end


end
