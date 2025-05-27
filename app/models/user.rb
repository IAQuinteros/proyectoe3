class User < ApplicationRecord
    has_many :publications, dependent: :destroy
    has_many :followers, class_name: "Follower", foreign_key: "user_id", dependent: :destroy
    has_many :followers_users, through: :followers, source: :user2, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates :name, presence: true, length: { maximum: 255}
    validates :password, presence: true, length: {maximum: 255}
    validates :mail, presence: true
    validates :mail, uniqueness: true
    validates :username, presence: true, uniqueness: true, length: {maximum: 255}
    validates :sex, inclusion: {in: ['M','F','O'], message: 'Debe ser M, F u O'}, presence: true
    validates :date_create, presence: true


end
 