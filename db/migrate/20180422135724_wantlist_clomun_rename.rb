class WantlistClomunRename < ActiveRecord::Migration[5.1]
  def change
    rename_column :want_lists, :name, :user_id
    change_column :want_lists, :user_id, :integer
  end
end
