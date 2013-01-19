class Event < ActiveRecord::Base
  attr_accessible :details, :end, :location, :start, :title
end
