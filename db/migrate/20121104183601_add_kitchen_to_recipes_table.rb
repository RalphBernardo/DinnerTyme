class AddKitchenToRecipesTable < ActiveRecord::Migration
  def change
    add_column :recipes, :kitchen_id, :integer
  end
end
