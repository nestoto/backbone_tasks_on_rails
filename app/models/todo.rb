class Todo < ActiveRecord::Base
  attr_accessible :content, :order, :done

  validates :content, :presence => true
  validates :order, :presence => true
  validates_numericality_of :order, :only_integer => true, :greater_than => 0

  #need to find a way to validate boolean value
  #validates :done, :presence => true


  belongs_to :user


  def to_json(options={})
    super(:only=>[:id, :content, :order, :done])
  end
end
