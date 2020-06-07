require 'octokit'
require 'dotenv'

Dotenv.load '.env'

github_access_token =  ENV['GITHUB_ACCESS_TOKEN']
path = ENV['FILEPATH']

system('cd')
folder_name = ARGV[0].to_s
Dir.mkdir(path + folder_name)
client = Octokit::Client.new(access_token: github_access_token)
client.user.login
client.create_repository(folder_name)
puts "Succesfully created repository #{folder_name}"
