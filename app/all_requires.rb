require 'active_support/all'
require 'sinatra/activerecord'


%w(models).each do |dir|
  Dir.glob( File.join( './app', dir, '*.rb') ).sort.each do |file|
    require file
  end
end

