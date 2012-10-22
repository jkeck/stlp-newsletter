class Newsletter < ActiveRecord::Base
  attr_accessible :dates, :session, :year
  
  has_one  :next_step
  has_many :quotes
end
