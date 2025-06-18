class Follower < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :followed_user, class_name: 'User'

  validates :date_followers, presence: true
  validates :followed_user, presence: true 

  validate :cannot_follow_self 
  validates :followed_user_id, uniqueness: { scope: :user_id, message: "Ya estás siguiendo a esta persona" }


  private
    def cannot_follow_self
    if user_id == followed_user_id
      errors.add(:followed_user, 'No te puedes seguir a ti mismo')
    end
  end
end
