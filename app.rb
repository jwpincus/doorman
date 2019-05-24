require 'bundler'
Bundler.require()

def self.get_or_post(url,&block)
  get(url,&block)
  post(url,&block)
end

get_or_post '/' do
  
	Twilio::TwiML::VoiceResponse.new do |r|
    sleep(2)
		r.say(message: "Bonjour mon amie. Come onn up to our happy plaice")
    sleep(2)
    r.say(digits: '9')
	end.to_s

end