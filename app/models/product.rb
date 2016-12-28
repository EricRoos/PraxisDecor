class Product < ApplicationRecord
  has_many :pictures, as: :imageable
  monetize :price_cents
end
