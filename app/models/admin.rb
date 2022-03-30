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
class Admin < ApplicationRecord
  has_secure_password
  has_many :promo_codes

  validates :login, :password_digest, :role, presence: true
end
