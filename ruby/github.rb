require 'octokit'
require 'dotenv'

Dotenv.load '.env'

username =  ENV['USERNAME']
password =  ENV['PASSWORD']
github_access_token =  ENV['GITHUB_ACCESS_TOKEN']
filepath = ENV['FILEPATH']


# client = Octokit::Client.new(login: username, password: password)
client = Octokit::Client.new(access_token: github_access_token)
puts client.user.name
