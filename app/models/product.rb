# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :text
#  price       :float
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
class Product < ApplicationRecord
  has_many :images
  has_many :line_items
  has_many :orders, through: :line_items

  belongs_to :category

  validates :title, :description, presence: true

  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  validates :title, uniqueness: true, length: { minimum: 3 }
end
