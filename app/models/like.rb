class Like < ApplicationRecord
  belongs_to :user
  belongs_to :want_list, :counter_cache => :want_lists_count
end
