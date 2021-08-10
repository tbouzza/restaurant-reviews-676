class AddChefToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :chef, :string
  end
end
