class User < ActiveRecord::Base
  attr_accessible :cell, :event_id, :gender, :name, :preference

  belongs_to :event

  validates_presence_of :name, :event_id
  validates_presence_of :cell, :if => :all_in
  validates_presence_of :gender, :if => :all_in
  validates_presence_of :preference, :if => :all_in
  validates_format_of :cell, :with => /^\+?\d+(-\d+)*$/, :if => :all_in

  def all_in
    return self.cell != nil || self.gender || self.preference
  end
end
