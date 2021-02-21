class Warband < ApplicationRecord
  has_many:fighters, dependent: :destroy

  validates :name, presence: true, uniqueness: true

end
