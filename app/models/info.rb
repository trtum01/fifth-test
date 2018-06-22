class Info < ApplicationRecord
  belongs_to :article
  validates :address, presence: true
  validates :telephone, numericality: { only_integer: true }, length: { is: 10 }
end
