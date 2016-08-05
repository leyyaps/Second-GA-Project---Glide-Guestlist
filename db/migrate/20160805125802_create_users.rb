class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.string :postcode
      t.string :address_1
      t.string :address_2
      t.string :city
      t.boolean :is_admin
      t.string :profile_pic

      t.timestamps
    end
  end
end
