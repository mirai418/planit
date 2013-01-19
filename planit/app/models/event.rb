class Event < ActiveRecord::Base
  attr_accessible :details, :end, :location, :start, :title

  validates_presence_of :title
  validates_presence_of :start
  validates_presence_of :end
  validates_presence_of :details
  validates_presence_of :location
end
