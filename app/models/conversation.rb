class Conversation < ActiveRecord::Base
  attr_accessible :active, :event_id, :user1_id, :user2_id

  belongs_to :event
end
