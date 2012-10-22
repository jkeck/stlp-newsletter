class NextStep < ActiveRecord::Base
  attr_accessible :body, :steps, :newsletter_id
  
  def split_steps
    return [] if steps.blank?
    steps.split("\n* ").map{|s| s.strip.gsub(/^\* /, "") }
  end
  
  belongs_to :newsletter
end
