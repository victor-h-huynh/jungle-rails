class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :description, presense: true
  validates :rating, presense: true

  validates :product, presence: true
  validates :user, presence: true

end
