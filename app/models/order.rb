# == Schema Information
#
# Table name: orders
#
#  id           :bigint           not null, primary key
#  user_address :string
#  user_name    :string
#  user_number  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items

  accepts_nested_attributes_for :line_items

  validates :user_name, :user_address, :user_number, presence: true

  def formatted_created_at
    created_at.strftime("%-d/%m/%Y - %H:%M")
  end

  def total_price
    line_items.to_a.sum(&:total_price)
  end
end
