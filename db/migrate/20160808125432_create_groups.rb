class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.integer :event_id
      t.integer :no_of_attendees

      t.timestamps
    end
  end
end
