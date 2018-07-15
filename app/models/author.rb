#author.errors.full_message
class Author < ActiveRecord::Base
  validates :name, :surname, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 18 }

  has_many :posts
  # has_many :author_posts
  # has_many :comments
  # has_many :post, through: :author_posts

  scope :old, -> { where('age > 30') }
  scope :young, -> { where('age < 20') }

  before_create :default_age

  def fullname
    "#{name} #{surname}"
  end

  private

  def default_age
    self.age = 25 unless age
  end

end
