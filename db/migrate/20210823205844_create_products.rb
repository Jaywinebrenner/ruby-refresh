class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :price
      t.text :description
      t.string :imageSource

      t.timestamps
    end
  end
end
