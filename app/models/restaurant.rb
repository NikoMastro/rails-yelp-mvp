class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = ["italian", "chinese", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: CATEGORIES }

end
