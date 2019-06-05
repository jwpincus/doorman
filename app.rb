require 'bundler'
Bundler.require()

def self.get_or_post(url,&block)
  get(url,&block)
  post(url,&block)
end

get_or_post '/' do
  
	Twilio::TwiML::VoiceResponse.new do |r|
		r.say(message: "Come on up")
    r.pause(length: 1)
    r.play(digits: '6w6w6')
    r.pause(length: 1)
	end.to_s

end