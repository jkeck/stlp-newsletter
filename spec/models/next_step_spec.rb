require 'spec_helper'

describe NextStep do
  describe "custom methods" do
    describe "split_steps" do
      it "should return an array of steps from a newline+asteric delimited list" do
        steps = NextStep.new
        steps.steps = <<-STR
* First Step
* Second Step
* 3rd step
        STR
        steps.split_steps.should be_a Array
        steps.split_steps.length.should be 3
        ["First Step", "Second Step", "3rd step"].each do |step|
          steps.split_steps.should include step
        end
      end
    end
  end
end