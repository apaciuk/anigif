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
class Gif < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  acts_as_taggable
end
