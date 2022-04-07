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
class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_address, :user_name, :user_number, :created_at, :updated_at

  has_many :line_items
end
