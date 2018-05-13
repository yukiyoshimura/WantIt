# == Schema Information
#
# Table name: want_lists
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  product          :string(255)
#  url              :string(255)
#  comment          :string(255)
#  want_lists_count :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class WantList < ApplicationRecord
  belongs_to :user
  has_many :likes

  def has_liked?(user_id)
    likes.find_by(user_id: user_id)
  end
end
