class User < ActiveRecord::Base
  attr_accessible :cell, :event_id, :gender, :name, :preference

  belongs_to :event

  validates_presence_of :name, :event_id
end
