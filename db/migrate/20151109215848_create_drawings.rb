class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
      t.string :newdrawing
      t.string :olddrawing
      t.integer :year
      t.text :description
      t.integer :width
      t.integer :length
      t.string :shape
      t.string :subset
      t.string :step
      t.integer :widthinches
      t.integer :lengthinches
      t.string :brand

      t.timestamps null: false
    end
  end
end
