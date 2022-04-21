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
require "rails_helper"

RSpec.describe PromoCode, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
