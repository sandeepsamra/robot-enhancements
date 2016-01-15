require_relative 'spec_helper'

describe Robot do
  
  before :each do
    @robot = Robot.new
  end

  describe "#heal!" do
    it "raises an exception if the robot is already at zero health or less" do
      @robot.health = 0
      expect { @robot.heal!(5) }.to raise_error RobotError
    end
  end

  describe "attack!" do
    it "raises an exception if the target being attacked is not a robot" do
      not_robot = NotARobot.new
      expect { @robot.attack!(not_robot) }.to raise_error RobotError
    end
  end

end