class Event < ActiveRecord::Base
  attr_accessible :details, :end, :location, :start, :title, :audience, :organizedBy

  validates_presence_of :title
  validates_presence_of :start
end
