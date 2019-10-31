require 'nokogiri'
require 'open-uri'

def run
  puts ""
  puts ""
  puts "Welcome to More Than You Ever Wanted To Know About Chelsea FC!"
  puts "This is a repository of all things Chelsea...or at least a few of them."
  puts " "
  puts ": ======================= :"
  puts " "
  
  html = open("https://en.wikipedia.org/wiki/Chelsea_F.C.")
  doc = Nokogiri::HTML(html)
  facts = []
  doc.css("tbody tr").each do |fact|
    fullname = fact.css("th td").text
    facts << fullname
  end

  facts.each.with_index(1) do |fullname, index|
    puts "#{index}. #{fullname}"
  end
  
end