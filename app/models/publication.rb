class Publication < ApplicationRecord
  belongs_to :user, class_name: "User"


  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :publication_hashtags, dependent: :destroy
  has_many :hashtags, through: :publication_hashtags

  validates :data_create, presence: true
  validates :description, presence: true, length: { maximum: 255}
  validates :publication_image, presence: true, length: { maximum: 255}


end
