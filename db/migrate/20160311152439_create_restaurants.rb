class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.text :deal
      t.decimal :rating
      t.string :img_url
      t.decimal :long
      t.decimal :lat

      t.timestamps null: false
    end
  end
end
