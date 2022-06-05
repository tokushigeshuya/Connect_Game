class Genre < ApplicationRecord
  belongs_to :post
  has_many :games, dependent: :destroy
end
