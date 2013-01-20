class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :cell
      t.integer :gender
      t.integer :preference
      t.integer :event_id

      t.timestamps
    end
  end
end
