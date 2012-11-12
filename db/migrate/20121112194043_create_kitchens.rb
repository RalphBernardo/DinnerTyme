class CreateKitchens < ActiveRecord::Migration
  def change
    create_table :kitchens do |t|
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
