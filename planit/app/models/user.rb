class User < ActiveRecord::Base
  attr_accessible :cell, :event_id, :gender, :name, :preference
end
