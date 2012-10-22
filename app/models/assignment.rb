class Assignment < ActiveRecord::Base
  attr_accessible :description, :link
  
  belongs_to :newsletter
end
