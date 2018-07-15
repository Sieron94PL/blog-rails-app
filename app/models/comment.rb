class Comment < ActiveRecord::Base
  validates :commentator_name, :content, presence: true

  belongs_to :post
end
