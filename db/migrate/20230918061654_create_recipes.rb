class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name,             null: false
      t.integer :cooking_time_id, null: false
      t.text :food,               null: false
      t.text :cooking_method,     null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
