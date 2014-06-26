class Article < ActiveRecord::Base

  has_many :comments, as: :commentable

  validates :title, presence: true, length: {minimum: 3, maximum: 255}

end
