$:.unshift File.dirname(__FILE__)
$stdout.sync = true

require 'grape'
require 'root'

run Rack::Builder.new {
  map '/api' do
    run FiveMin::Root
  end
}.to_app

puts 'Mounted /api'