class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :photo
      t.integer :amount
      t.string :unit
      t.string :string

      t.timestamps
    end
  end
end
