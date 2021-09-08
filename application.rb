require 'rest-client'
require 'json'

def get_facebook_and_twitter
    twitter_result = RestClient.get("takehome.io/twitter")
    facebook_result = RestClient.get("takehome.io/facebook")
    
    if facebook_result && twitter_result
        final_facebook = JSON.parse(facebook_result)
        final_twitter = JSON.parse(twitter_result)
    end

    puts "Facebook result: #{final_facebook}"
    puts "Twitter result: #{final_twitter}"
end

get_facebook_and_twitter()