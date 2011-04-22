# TODO: change to the relative path based on file
require File.dirname(__FILE__) + "/../lib/unit"

module Stratego

describe Unit do

  [ :rank, :name, :view ].each do |method|
    it "should respond to #{method}" do
      unit.should respond_to(method)
    end
  end

  it "should have a rank of 1" do
    unit.rank.should == 1
  end

  it "should have the name of 'General'" do
    unit.name.should == "General"
  end

  it "should have the view of 'G(1)'" do
    unit.view.should == "G(1)"
  end

  def unit ; @unit ; end

  before(:all) do
    @unit = Unit.new :rank => 1, :name => "General", :owner => :player
  end

end

end