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

class Task < ActiveRecord::Base
  attr_accessible :content, :order, :done

  validates :content, :presence => true
  validates :order, :presence => true
  validates_numericality_of :order, :only_integer => true, :greater_than => 0

  #need to find a way to validate boolean value
  #validates :done, :presence => true


  def to_json(options={})
    super(:only=>[:id, :content, :order, :done])
  end
end
