require 'bundler'
Bundler.require()

def self.get_or_post(url,&block)
  get(url,&block)
  post(url,&block)
end

get_or_post '/' do
  
	Twilio::TwiML::VoiceResponse.new do |r|
		r.say(message: "Hello Sexy! Come on up!")
	end.to_s

end