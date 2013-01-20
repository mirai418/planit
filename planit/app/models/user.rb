class User < ActiveRecord::Base
  attr_accessible :cell, :event_id, :gender, :name, :preference

  belongs_to :event
end
