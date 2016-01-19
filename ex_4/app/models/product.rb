class Product < ActiveRecord::Base
  belongs_to :user
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  validates :user, presence: true

  validates :title, length: {in: 3..50}
  validates :price, numericality: {greater_than: 0}
  validates :description, :presence => true, :length => {minimum: 2}, :allow_blank => true
  validates :user_id, numericality: {greater_than: 0}, presence: true


  def all_labels=(names)
  self.labels = names.split(",").map do |name|
      Label.where(title: name.strip).first_or_create!
  end
  end

  def all_labels
    self.labels.map(&:title).join(", ")
  end
end
