# == Schema Information
#
# Table name: tasks
#
#  id         :integer         not null, primary key
#  content    :text
#  order      :integer
#  done       :boolean
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Task do
  before(:each) do
    @attr = { :content => "Eat Breakfast", :order => 1, :done => false}
  end

  it "should create a new task given valid attributes" do
    Task.create!(@attr)
  end


  it "should have a content" do
    Task.new(@attr.merge(:content => "")).should_not be_valid
  end
  
  it "should have an order" do
    Task.new(@attr.merge(:order => "")).should_not be_valid
  end

  it "should not accept non positive integer and less than 1 numbers for order" do
    @incorrect_cases = [-1, 2.4, 0]
    @incorrect_cases.each do |num|
      Task.new(@attr.merge(:order => num)).should_not be_valid
    end
  end

  it "should accept positive integer and greater or equal to 1 numbers for order" do
    @valid_cases = [1, 1000]
    @valid_cases.each do |num|
      Task.new(@attr.merge(:order =>num)).should be_valid
    end
  end
end
