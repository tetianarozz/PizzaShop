# == Schema Information
#
# Table name: images
#
#  id         :bigint           not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_images_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
require "rails_helper"

RSpec.describe Image, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
