require 'rubygems'
require 'twilio-ruby'
require 'nokogiri'
require 'open-uri'

def twillio_message(body)
	account_sid = "AC9ff2f8a0197b42ceae591b0841c9ebf6"
	auth_token = "d96a9e4219432539bcf879a86519cbd4"

	@client = Twilio::REST::Client.new(account_sid, auth_token)

	message = @client.account.messages.create(
		:from => "+14049945219",
		:to => "+380933801480",
		:body => body
		)

	puts message.to
end

puts "Welcome to a Magic 8-Ball game
Enter your QUESTION, please: "
message_body = gets.chomp + " -"

answers = Nokogiri::HTML(open("http://en.wikipedia.org/wiki/Magic_8-Ball#Possible_answers")).xpath('//ol//li//span').children
a = Array.new
(0..19).each do |i|
	a << answers[i]
end

message_answer = a[rand(0..19)]
message_body << message_answer
print "ANSWER: #{message_answer}"
#puts "SMS: #{message_body}" 

twillio_message(message_body)
