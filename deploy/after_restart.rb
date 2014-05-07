on_app_master do
  run "curl https://api.rollbar.com/api/1/deploy/ --silent -F access_token=#{ENV['ROLLBAR_ACCESS_TOKEN']} -F environment=#{config.environment} -F revision=#{config.revision}"
end

