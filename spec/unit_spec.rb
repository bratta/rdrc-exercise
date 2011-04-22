require File.dirname(__FILE__) + "/../lib/stratego"

  describe Unit do

    [ :rank, :name, :view ].each do |method|
      it "should respond to #{method}" do
        Unit.new.should respond_to(method)
      end
    end

    context "Player General" do

      it "should have a rank of 1" do
        unit.rank.should == 1
      end

      it "should have the name of 'General'" do
        unit.name.should == "General"
      end

      it "should have the view of 'G(1)'" do
        unit.view.should == "G(1)"
      end

      before(:each) do
        @unit = Unit.new :rank => 1, :name => "General", :owner => :player
      end

    end

    context "Computer Unit" do

      context "hidden" do

        it "should have a hidden view" do
          unit.view.should == "[X(#)]"
        end

        before(:each) do
          @unit = Unit.new :rank => 3, :name => "Captain", :owner => :computer
        end

      end

      context "exposed" do

        it "should be exposed" do
          unit.view.should == "[C(3)]"
        end

        before(:each) do
          @unit = Unit.new :rank => 3, :name => "Captain", :owner => :computer, :exposed => true
        end

      end

    end

    def unit ; @unit ; end

  end

