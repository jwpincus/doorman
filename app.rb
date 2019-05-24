require 'bundler'
Bundler.require()

def self.get_or_post(url,&block)
  get(url,&block)
  post(url,&block)
end

get_or_post '/' do
  
	Twilio::TwiML::VoiceResponse.new do |r|
		r.say(message: "Bonjour mon amie. Come onn up to our happy plaice")
    r.pause(length: 1)
    r.play(digits: '3w4w5')
    r.pause(length: 1)
    r.say(message: 'Ok')
	end.to_s

end