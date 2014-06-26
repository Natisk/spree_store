class New < ActiveRecord::Base

  has_many :comments, as: :commentable

  validates :title, presence: :true

end
