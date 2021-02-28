class Warband < ApplicationRecord
  has_many:fighters, dependent: :destroy
  has_one_attached :photo
  FACTIONS =["the living", "the dead"]
  validates :name, presence: true, uniqueness: true
  validates :faction, presence:true
end
