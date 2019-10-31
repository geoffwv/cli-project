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
  doc.css("tbody tr")[1].each do |fact|
    fullname = fact.css("td")[0]
    facts << fullname
  end

  facts.each.with_index(1) do |fullname, index|
    puts "#{index}. #{fullname}"
  end
  
  # html = open("https://www.imdb.com/")
  # doc = Nokogiri::HTML(html)
  # movies = []
  # doc.css("div.rhs-body")[0].css("div.rhs-row").each do |mov|
  #   title = mov.css(".title").text.strip
  #   movies << title
  # end

  # movies.each.with_index(1) do |title, index|
  #   puts "#{index}. #{title}"
  # end
  
end
