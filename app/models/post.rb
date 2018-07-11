class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :title, uniqueness: true
  validates :title, length: {maximum: 80}
  validates :content, length: {in: 10..500}


  # has_many :author_posts
  # has_many :author, through: :author_posts

  belongs_to  :author

  scope :old, -> { where('created_at > ?', 40.minutes.ago) }

end
