class Quote < ActiveRecord::Base
  attr_accessible :author, :quote, :newsletter_id
  
  belongs_to :newsletter
end
