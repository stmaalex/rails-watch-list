class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy #@list.movies
  validates :name, presence: true
  validates :name, uniqueness: true
  has_one_attached :banner_photo
end
