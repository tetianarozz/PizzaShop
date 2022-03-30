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
require 'rails_helper'

RSpec.describe PromoCode, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
