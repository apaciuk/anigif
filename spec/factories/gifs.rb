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
FactoryBot.define do
  factory :gif do
    user { nil }
    image_data { "MyText" }
  end
end
