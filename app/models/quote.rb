class Quote < ActiveRecord::Base
  attr_accessible :author, :quote
  
  belongs_to :newsletter
end
