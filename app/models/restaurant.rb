class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  categories = %w(chinese italian japanese french belgian thai)
  CATEGORIES = categories.map do |c|
    c.capitalize
  end
  CATEGORIES.map { |c| categories << c }

  validates_presence_of :name, :address
  validates :phone_number, format: { with: /\A(((\+|00)33\s?)|0)(\d)(\s?\d{2}){4}\z/, message: "invalid phone number format" }
  validates :name, length: { minimum: 3 }, uniqueness: { scope: :address }
  validates :category, inclusion: { in: categories, message: "%{value} is not a valid restaurant category" }
end
