class MiscContent < ActiveRecord::Base
  attr_accessible :body, :title, :newsletter_id
  
  belongs_to :newsletter
end
