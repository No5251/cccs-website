#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems'
require 'bundler/setup'

require 'curb'
require 'nokogiri'

c = Curl::Easy.perform("http://www1.stuttgart.de/stadtbibliothek/druck/audio/cccs/cccs_audio1.php")
page = Nokogiri::HTML(c.body_str.to_s)
puts page.xpath("//table/tr/td")
