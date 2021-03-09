# ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default)

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/coffee.sqlite"
)

require './app/controllers/application_controller'
require_all 'app'