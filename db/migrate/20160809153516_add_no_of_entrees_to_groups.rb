class AddNoOfEntreesToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :no_of_entrees, :integer
  end
end
