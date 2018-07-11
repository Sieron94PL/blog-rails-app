#author.errors.full_message
class Author < ActiveRecord::Base
  validates :name, :surname, presence: true

  # has_many :author_posts
  # has_many :comments
  # has_many :post, through: :author_posts
  has_many :posts

  def fullname
    "#{name} #{surname}"
  end

end
