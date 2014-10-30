
require 'rubygems'
require 'sinatra'

set :environment, ENV['RACK_ENV'].to_sym
disable :run, :reload

require './app/booker'

run Booker::Service.new