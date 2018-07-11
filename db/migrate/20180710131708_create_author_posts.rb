class CreateAuthorPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :author_posts do |t|
      t.integer :author_id
      t.integer :post_id
    end
  end
end
