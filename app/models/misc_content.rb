class MiscContent < ActiveRecord::Base
  attr_accessible :body, :title
  
  belongs_to :newsletter
end
