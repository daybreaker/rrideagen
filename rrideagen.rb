require 'rubygems'
require 'sinatra'
require 'haml'

require_relative 'lib/pwapi'
require_relative 'lib/api'
require_relative 'lib/helpers'

get '/' do
  api_finder = PWApi.new({})
  @apis = []
  (2..4).to_a.sample.times do
    @apis << Api.new(api_finder.get_random_api)
  end
  haml :index, :format => :html5
end
