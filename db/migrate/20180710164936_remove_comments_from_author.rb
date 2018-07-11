class RemoveCommentsFromAuthor < ActiveRecord::Migration[5.2]
  def change
    remove_column :authors, :comments, :integer
  end
end
