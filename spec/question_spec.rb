require 'spec_helper'

describe(Question) do
  describe('#answer') do
    it('return answers belonging to this question') do
      question1 = Question.create({:query => "This is a question1?", :survey_id => survey.id})
      answer1 = Answer.create({:input => "Answer for question1", :question_id => question.id})
      answer2 = Answer.create({:input => "Alternate answer for question1", :question_id => question.id})
      expect(question1.answer).to eq [answer1, answer2]
    end
  end
  describe('#survey') do
    it('return the survey the questions belongs to') do
      survey1 = Survey.create({:title => "Big Bag Survey"})
      question = Question.create({:query => "What is a question?", :survey_id => survey.id})
      expect(question.survey).to eq survey1
    end
  end
end
