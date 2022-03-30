# == Schema Information
#
# Table name: promo_codes
#
#  id         :bigint           not null, primary key
#  discount   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin_id   :bigint           not null
#
# Indexes
#
#  index_promo_codes_on_admin_id  (admin_id)
#
# Foreign Keys
#
#  fk_rails_...  (admin_id => admins.id)
#
FactoryBot.define do
  factory :promo_code do
    discount { 1 }
    admin { nil }
  end
end
