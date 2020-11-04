class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :meal_type
      t.integer :user_id
    
      t.timestamps
    end
  end
end
