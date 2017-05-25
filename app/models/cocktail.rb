class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true
  validates :name, presence: true
  validates_uniqueness_of [:cocktail_id, :ingredient_id]
end
