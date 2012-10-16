require 'rubygems'
require 'json'
require 'open-uri'

url = "http://maps.googleapis.com/maps/api/directions/json?origin=Toronto&destination=Montreal&sensor=false"
puts url

require 'net/http'
require 'uri'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

page = open url

puts page
