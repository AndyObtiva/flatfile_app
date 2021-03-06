require 'sinatra'
require 'erb'
require 'jwt'
require 'active_record'
require_relative 'config/environments'
require_relative 'models/import'

EMBED_ID = 'ae6bb935-251c-464a-ad11-fcf4fdb056ac'
PRIVATE_KEY = 'ilUJRpc3kSuW8NggeUWT9x3ftMDZ9VOBOxzssEsYfL09cRkkKBwqFNgLa1yTsEA2'

set :port, 4242

get '/' do
  user = {
    id: '29047',
    email: 'andy.am@gmail.com',
    name: 'Andy Maleh',
  }
  org  = {
    id: '33829',
    name: 'Acme Inc.'
  }
  payload = {
    embed: EMBED_ID,
    user: user,
    org: org
  }
  @token = JWT.encode payload, PRIVATE_KEY, algorithm='HS256'
  erb :index
end

post '/imports' do
  puts 'post /imports'
  puts 'params.inspect'
  puts params.inspect
  request_body = request.body.read
  puts 'request.body'
  puts request_body
  Import.create!(data: request_body)
end
