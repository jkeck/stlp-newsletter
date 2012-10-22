class NextStep < ActiveRecord::Base
  attr_accessible :body, :steps, :newsletter_id
  
  belongs_to :newsletter
end
