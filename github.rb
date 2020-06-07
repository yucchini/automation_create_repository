require 'octokit'
require 'dotenv'

Dotenv.load '.env'

username =  ENV['USERNAME']
password =  ENV['PASSWORD']
github_access_token =  ENV['GITHUB_ACCESS_TOKEN']
path = ENV['FILEPATH']

system('cd')
folderName = ARGV[0].to_s
Dir.mkdir(path + folderName)
client = Octokit::Client.new(access_token: github_access_token)
client.user.login
client.create_repository(folderName)
puts "Succesfully created repository #{folderName}"
# client.delete_repository(folderName)
