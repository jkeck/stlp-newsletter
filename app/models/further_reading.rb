class FurtherReading < ActiveRecord::Base
  attr_accessible :description, :url, :newsletter_id
  
  belongs_to :newsletter
end
