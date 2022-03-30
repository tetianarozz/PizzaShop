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
#  cart_id      :bigint           not null
#
# Indexes
#
#  index_orders_on_cart_id  (cart_id)
#
# Foreign Keys
#
#  fk_rails_...  (cart_id => carts.id)
#
class Order < ApplicationRecord
  belongs_to :cart

  validates :user_name, :user_address, :user_number, presence: true
end
