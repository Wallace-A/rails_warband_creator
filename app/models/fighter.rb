class Fighter < ApplicationRecord
  belongs_to :warband

  validates :value, presence: true
  validates :name, presence: true
  validates :role, presence: true
end
