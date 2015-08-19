class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(chinese italian japanese french belgian)

  validates_presence_of :name, :address
  validates :phone_number, format: { with: /\A(((\+|00)33\s?)|0)(\d)(\s?\d{2}){4}\z/, message: "invalid phone number format" }
  validates :name, length: { minimum: 3 }, uniqueness: { scope: :address }
  validates :category, inclusion: { in: CATEGORIES, message: "%{value} is not a valid restaurant category" }
end
