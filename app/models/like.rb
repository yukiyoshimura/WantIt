# == Schema Information
#
# Table name: likes
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  want_list_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Like < ApplicationRecord
  belongs_to :user
  belongs_to :want_list, :counter_cache => :want_lists_count
end
