class KeyPoint < ActiveRecord::Base
  attr_accessible :description, :points
  
  belongs_to :newsletter
end
