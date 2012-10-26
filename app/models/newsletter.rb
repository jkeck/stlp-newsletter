class Newsletter < ActiveRecord::Base
  attr_accessible :dates, :session, :year
  
  has_one  :next_step
  has_many :quotes
  has_many :assignments
  has_one  :key_point
  has_many :misc_contents
  has_one  :main_content
  has_many :further_readings
end
