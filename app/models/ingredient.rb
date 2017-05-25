class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  validates :description, presence: true
end
