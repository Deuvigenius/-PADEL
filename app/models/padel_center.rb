class PadelCenter < ApplicationRecord
  belongs_to :user
  has_many :padel_courts, dependent: :destroy
  has_one_attached :photo
end
