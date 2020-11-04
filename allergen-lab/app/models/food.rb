class Food < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe
  validates :ingredient, uniqueness:{scope: :recipe}
  validates :measurement, presence: true
end
