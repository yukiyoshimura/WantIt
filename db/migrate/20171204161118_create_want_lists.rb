class CreateWantLists < ActiveRecord::Migration[5.0]
  def change
    create_table :want_lists do |t|
      t.string :name
      t.string :product
      t.string :url
      t.string :comment
      t.integer :score

      t.timestamps
    end
  end
end
