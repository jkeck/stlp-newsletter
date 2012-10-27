class Carousel < ActiveRecord::Base
  attr_accessible :caption, :image_url, :newsletter_id
  
  belongs_to :newsletter
end
