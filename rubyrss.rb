require 'rss'
  require 'open-uri'

puts "RSS Reader:"
puts "Please enter the link you would like to view:"
address = gets.chomp
  
  url = address
  URI.open(url) do |rss|
    feed = RSS::Parser.parse(rss)
    puts "Title: #{feed.channel.title}"
    feed.items.each do |item|
      puts "Item: #{item.title}"
      puts "Description: #{item.description}"
      puts "Original Link: #{item.link}"
      puts
    end
  end
