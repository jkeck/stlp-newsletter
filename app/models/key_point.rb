class KeyPoint < ActiveRecord::Base
  attr_accessible :description, :points, :newsletter_id
  
  def split_points
    return [] if points.blank?
    points.split("\n* ").map{|s| s.strip.gsub(/^\* /, "") }
  end
  
  belongs_to :newsletter
end
