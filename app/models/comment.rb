class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :body, presence: {message: ": Please Enter Review Body "}
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true , message: ": Can You Please Enter Product Review "}
  after_create_commit { CommentUpdateJob.perform_later(self, self.user) }

  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(:rating) }

end

