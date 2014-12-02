#!/usr/bin/env ruby

require 'net/http'
require 'json'

def get_data(endpoint)
  uri = URI.parse("https://api.ravelry.com/" + endpoint)

  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(uri.request_uri)
  request.basic_auth("CDD6E7DE9450B005368A", "w4B3fk6o0_xmGFxOUuIhM-6uszHtT2oz98Qg6dj8")
  response = http.request(request)

  data = JSON.parse(response.body)
  # puts JSON.pretty_generate(data)
  # puts response.body.length
end

# get_data('current_user.json')

def get_most_popular_pattern(pattern_type='')
  data = get_data("patterns/search.json?sort=popularity&query=#{pattern_type}")
  patterns = data["patterns"]
  # puts JSON.pretty_generate(patterns[0])
  most_popular = patterns[0]
  full_pattern = get_data("patterns/#{most_popular["id"]}.json")
  # puts JSON.pretty_generate(full_pattern)
  puts full_pattern['pattern']['projects_count']

end

get_most_popular_pattern()
