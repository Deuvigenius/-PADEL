class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :rents, dependent: :destroy
  has_many :padel_centers, dependent: :destroy
  has_many :padel_courts, through: :rents

  validates :first_name, :last_name, presence: true
end
