class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates_presence_of :content, :rating, :restaurant_id
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 6 }
end
