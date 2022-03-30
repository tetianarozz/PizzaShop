# == Schema Information
#
# Table name: admins
#
#  id              :bigint           not null, primary key
#  login           :string
#  password_digest :string
#  role            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :admin do
    login { "MyString" }
    password { "" }
    role { 1 }
  end
end
