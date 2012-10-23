class MainContent < ActiveRecord::Base
  attr_accessible :body, :body_overlay, :image, :newsletter_id
  
  belongs_to :newsletter
end
