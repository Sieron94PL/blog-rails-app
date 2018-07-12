class AddCommentsToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :comments
  end
end
