# == Schema Information
#
# Table name: gifs
#
#  id         :uuid             not null, primary key
#  image_data :text             default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_gifs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Gif, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
