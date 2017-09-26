require 'spec_helper'

describe(Survey) do
  describe('#questions') do
    it('returns the questions that belong to this survey') do
      survey = Survey.create({:title => "Title of Survey"})
      question1 = Question.create({:query => "Answer me this?", :survey_id => survey.id})
      question2 = Question.create({:query => "Answer me again?", :survey_id => survey.id})
      expect(survey.questions).to eq [question1, question2]
    end
  end
end
