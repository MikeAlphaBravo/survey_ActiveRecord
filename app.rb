require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
also_reload 'lib/**/*.rb'
require './lib/answer'
require './lib/question'
require './lib/survey'
require 'pg'

get '/' do
  erb(:index)
end

get '/survey/list' do
  @surveys = Survey.all
  erb(:survey_list_take)
end

get '/survey/edit' do
  @surveys = Survey.all
  erb(:survey_list_edit)
end

get 'survey/:id/' do
  erb(:survey_edit)
end
