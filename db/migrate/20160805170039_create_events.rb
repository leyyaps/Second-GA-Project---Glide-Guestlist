class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.text :description
      t.integer :allocation
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
