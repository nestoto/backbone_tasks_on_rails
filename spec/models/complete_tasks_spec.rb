require 'spec_helper'

describe "CompleteTasks" do
  before(:each) do
    @user = Factory(:user)
    @attr = { :content => "Eat Breakfast", :order => 1, :done => false}
  end

  it "should create a new task given valid attributes" do
    @user.completetasks.create!(@attr)
  end

  describe "User association" do
    before(:each) do
      @completetask = @user.completetasks.create(@attr)
    end

    it "should have a user attribute" do
      @completetask.should respond_to(:user)
    end

    it "should have the right associated user" do
      @completetask.user_id.should == @user.id
      @completetask.user.should == @user
    end
  end

  describe "validation" do
      
    it "should have a content" do
      CompleteTasks.new(@attr.merge(:content => "")).should_not be_valid
    end
    
    it "should have an order" do
      CompleteTasks.new(@attr.merge(:order => "")).should_not be_valid
    end

    it "should not accept non positive integer and less than 1 numbers for order" do
      @incorrect_cases = [-1, 2.4, 0]
      @incorrect_cases.each do |num|
        CompleteTasks.new(@attr.merge(:order => num)).should_not be_valid
      end
    end

    it "should accept positive integer and greater or equal to 1 numbers for order" do
      @valid_cases = [1, 1000]
      @valid_cases.each do |num|
        CompleteTasks.new(@attr.merge(:order =>num)).should be_valid
      end
    end
  end
end
