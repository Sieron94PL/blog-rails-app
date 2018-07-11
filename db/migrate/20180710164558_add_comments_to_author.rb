class AddCommentsToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :comments, :has_many
  end
end
