class Assignment < ActiveRecord::Base
  attr_accessible :description, :link, :newsletter_id
  
  belongs_to :newsletter
end
