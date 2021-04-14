class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :total_time, null: false
      t.string :difficulty
      t.integer :servings
      t.text :nutrition
      t.text :ingredients
      t.text :directions
      t.integer :rating
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
