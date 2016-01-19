class Label < ActiveRecord::Base
  has_many :labelings, dependent: :destroy
  with_options through: :labelings, source: :labelable do |label|
    label.has_many :users_labelables, :source_type => 'User'
    label.has_many :products_labelables, :source_type => 'Product'
  end
end
