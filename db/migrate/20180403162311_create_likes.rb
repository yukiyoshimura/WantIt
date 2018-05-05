class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :users
      t.references :want_lists
      t.timestamps
    end
  end
end
