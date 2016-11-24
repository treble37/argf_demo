#!/usr/bin/env ruby
require 'pry'
require 'optparse'

OptionParser.new do |opts|
  opts.banner = "\nARGF Demo app\n"

  opts.on("-h", "--help", "Help:") do |h|
    puts opts
    exit
  end

  opts.on("-v", "--version") do |v|
    puts opts.banner
    puts "Version 0.0.1"
  end

end.parse!

ARGF.each do |line|
  break if line=="quit\n"
  sum = line.strip.split(" ").map(&:to_i).inject { |s, n| n + s }
  puts "Sum: #{sum}"
end
