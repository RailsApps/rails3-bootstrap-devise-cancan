require 'net/http'
require 'json'
require 'uri'

uri = URI.parse('https://api.rollbar.com/api/1/deploy/')

params = {
    :local_username => config.deployed_by,
    :access_token => ENV['ROLLBAR_ACCESS_TOKEN'],
    :environment => config.framework_env,
    :revision => config.revision
}

request = Net::HTTP::Post.new(uri.request_uri)
request.body = JSON.dump(params)

Net::HTTP.start(uri.host, uri.port, :use_ssl => true) do |http|
    http.request(request)
end
