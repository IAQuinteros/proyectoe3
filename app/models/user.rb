class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
    def admin?
      email == 'admin@example.com'
    end

    has_many :publications, dependent: :destroy
    has_many :followers, class_name: "Follower", foreign_key: "user_id", dependent: :destroy
    has_many :followers_users, through: :followers, source: :followed_user
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates :name, presence: true, length: { maximum: 255}
    validates :username, presence: true, uniqueness: true, length: {maximum: 255}
    validates :sex, inclusion: {in: ['M','F','O'], message: 'Debe seleccionar sexo'}, presence: true
    before_validation :set_default_date, on: :create

    private
    def set_default_date
      self.date_create ||= Date.today
    end
end
 