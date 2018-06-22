class Article < ApplicationRecord
  has_many :infos, dependent: :destroy
  validates :name, presence: true
  validates :lastname, presence: true
  validates :age, numericality: { only_integer: true, less_than_or_equal_to: 120, message: "is more than 120."}, presence: true
end
