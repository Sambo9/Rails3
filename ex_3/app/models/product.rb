class Product < ActiveRecord::Base
  belongs_to :user
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  validates :user, presence: true

  validates :title, length: {in: 3..50}
  validates :price, numericality: {greater_than: 0}
  validates :description, :presence => true, :length => {minimum: 2}, :allow_blank => true
  validates :user_id, numericality: {greater_than: 0}, presence: true
end
