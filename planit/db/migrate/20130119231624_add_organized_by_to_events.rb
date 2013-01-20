class AddOrganizedByToEvents < ActiveRecord::Migration
  def change
    add_column :events, :organizedBy, :string
  end
end
