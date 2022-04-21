# == Schema Information
#
# Table name: promo_codes
#
#  id         :bigint           not null, primary key
#  discount   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_promo_codes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class PromoCode < ApplicationRecord
  belongs_to :user

  validates :discount, presence: true
end
