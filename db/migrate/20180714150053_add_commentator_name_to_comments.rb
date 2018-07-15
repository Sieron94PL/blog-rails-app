class AddCommentatorNameToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :commentator_name, :string
  end
end
