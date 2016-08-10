class AddBrandLogoToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :brand_logo, :string
  end
end
