require 'spec_helper'

describe(Question) do
  describe('#answers') do
    it('return answers belonging to this question') do
      survey = Survey.create({:title => "Survey Title"})
      question1 = Question.create({:query => "This is a question1?", :survey_id => survey.id})
      answer1 = Answer.create({:input => "Answer for question1", :question_id => question1.id})
      answer2 = Answer.create({:input => "Alternate answer for question1", :question_id => question1.id})
      expect(question1.answers).to eq [answer1, answer2]
    end
  end
  describe('#survey') do
    it('return the survey the questions belongs to') do
      survey1 = Survey.create({:title => "Big Bag Survey"})
      question = Question.create({:query => "What is a question?", :survey_id => survey1.id})
      expect(question.survey).to eq survey1
    end
  end
end
