class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :photo
      t.text :steps
      t.integer :serves
      t.integer :rating

      t.timestamps
    end
  end
end
