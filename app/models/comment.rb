class Comment < ActiveRecord::Base

  belongs_to :commentable, polymorphic: true

  validates :author, presence: :true, length: {minimum: 3, maximum: 34}

end
