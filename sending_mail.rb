require 'mail'

mail = Mail.new do
  from     'nataly@skilling.me'
  to       'n.tkachuk@outlook.com'
  subject  'Here is the image you wanted'
  body     File.read('body.html')
 # add_file :filename => 'somefile.png', :content => File.read('/somefile.png')
end

#Mail.defaults do
  mail.delivery_method :smtp, address: "localhost", port: 1025
#end

	mail.deliver


