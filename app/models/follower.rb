class Follower < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :followed_user, class_name: 'User'

  validates :date_followers, presence: true
  validates :followed_user, presence: true 

  #validates :cannot_follower_self 

  #def cannot_follower_self
   # errors.add(:users2, 'No te puedes seguir a ti mismo') if users_id == users2
  #end

end
