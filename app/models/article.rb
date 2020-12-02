class Article < ApplicationRecord
  belongs_to :category
  translates :nom, :description
  validates :nom_fr, presence: true
  validates :prix, presence: true
  validates :category, presence: true
  validates :description_fr, presence: true
end
