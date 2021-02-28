class Fighter < ApplicationRecord
  belongs_to :warband
  ROLES = ["leader", "soldier", "levy"]
  validates :value, presence: true
  validates :name, presence: true
  validates :role, presence: true
end
