#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

if ARGV.count != 1
  puts "error"
  exit
end

filename = ARGV[0]

if !File.exists?(filename)
  puts "file not found"
  exit
end

count=20000

File.open filename do |f|
  f.each_line do |line|
    count.times do
      random = Random.rand(1..999999999)
      puts "#{line.chomp},COP#{sprintf('%010d',random)},COP#{sprintf('%010d',random)},COP#{sprintf('%010d',random)},COP#{sprintf('%010d',random)}"
    end
  end
end

