class PadelCourt < ApplicationRecord
  belongs_to :padel_center
  has_many :rents, dependent: :destroy
  has_many :users, through: :rents
  has_one_attached :photo
end
