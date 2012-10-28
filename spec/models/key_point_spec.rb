require 'spec_helper'

describe KeyPoint do
  describe "custom methods" do
    describe "split_points" do
      it "should return an array of steps from a newline+asteric delimited list" do
        points = KeyPoint.new
        points.points = <<-STR
* First Point
* Second Point
* 3rd point
        STR
        points.split_points.should be_a Array
        points.split_points.length.should be 3
        ["First Point", "Second Point", "3rd point"].each do |point|
          points.split_points.should include point
        end
      end
    end
  end
end