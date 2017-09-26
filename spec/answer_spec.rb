require 'spec_helper'

describe(Answer) do
  describe('#question') do
    it('return the question belonging to the answer') do
      question1 = Question.create({query:"Title of Question"})
      answer = Answer.create({:input => "Answer this", :question_id => question1.id})
      expect(answer.question).to eq question1
    end
  end
end
