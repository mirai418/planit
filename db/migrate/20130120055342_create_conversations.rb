class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :event_id
      t.integer :user1_id
      t.integer :user2_id
      t.integer :active

      t.timestamps
    end
  end
end
