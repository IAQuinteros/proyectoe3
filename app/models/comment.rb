class Comment < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :publication

  validates :date_create, presence: true
  validates :content, presence: true, length: { maximum: 255}
  validates :actualization_date, presence: true, on: :update


end
