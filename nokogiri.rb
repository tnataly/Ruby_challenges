require 'nokogiri'
require 'open-uri'



doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))
#doc = Nokogiri::HTML(open("http://google.com"))

#File.open("html_output.html","w").puts(doc)

#search = doc.search('ul.components-list')

puts doc.title
puts doc.css('.page-section-title')[0].children
search = doc.css('.components-item').inner_html
puts search
 
 