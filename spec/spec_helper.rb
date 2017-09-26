ENV['RACK_ENV'] = 'test'

require('rspec')
require('pg')
require('sinatra/activerecord')
require('answer')
require('question')
require('survey')

RSpec.configure do |config|
  config.after(:each) do
    Answer.all.each do |answer|
      answer.destroy
    end
    Question.all.each do |question|
      question.destroy
    end
    Survey.all.each do |survey|
      survey.destroy
    end
  end
end
