class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, length: { minimum: 15 }
end
