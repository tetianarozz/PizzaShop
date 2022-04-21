# == Schema Information
#
# Table name: admins
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  login                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer          default("manager")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_admins_on_email                 (email) UNIQUE
#  index_admins_on_reset_password_token  (reset_password_token) UNIQUE
#
class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:manager, :admin, :main_admin]
  # after_initialize :set_default_role, :if => :new_record?

  #has_secure_password
  has_many :promo_codes

  validates :login, :role, presence: true

  attr_accessor :login

  def login
    :login || self.login || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if (login = conditions.delete(:login))
      where(conditions.to_h).where(["lower(login) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:login) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

  validate :validate_login

  def validate_login
    if Admin.where(email: login).exists?
      errors.add(:login, :invalid)
    end
  end
end
