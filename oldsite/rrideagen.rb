#!/usr/bin/env ruby
# encoding: UTF-8
require 'rubygems'
require 'sinatra'
require 'haml'

require_relative 'lib/pwapi'

get '/' do
  haml :index, :format => :html5
  @apis = []
  (2..4).to_a.sample.times do 
    @apis << PWApi.get_random_api
  end
end