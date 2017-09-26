class Survey < ActiveRecord::Base
  has_many(:questions)
  before_save(:titlecase_title)

private
  def titlecase_title
    self.title=(title().titlecase())
  end
end
