require 'json'
require 'httpclient'
require 'jwt'

def lambda_handler(event:, context:)
  
  base_url = 'https://www.yahoo.co.jp/'
  client = HTTPClient.new()
  response = client.get(base_url)

  
  r = {
    version: "gem check1  ruby version= #{RUBY_VERSION}",
#    rails_version: "ActiveRecord.class is #{ActiveRecord}",
    endless: [0, 1, 2][0..],
    body: response.body,
    status: response.status
  }
  { statusCode: 200, body: JSON.generate(r) }
end

