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
FactoryBot.define do
  factory :order do
    cart { nil }
    user_name { "MyString" }
    user_number { 1 }
    user_adress { "MyString" }
  end
end
