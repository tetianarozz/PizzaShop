# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :products
end
