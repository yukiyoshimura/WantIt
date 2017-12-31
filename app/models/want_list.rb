# == Schema Information
#
# Table name: want_lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  product    :string(255)
#  url        :string(255)
#  comment    :string(255)
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WantList < ApplicationRecord
end
