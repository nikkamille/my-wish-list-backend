class Item < ApplicationRecord
  belongs_to :wish_list

  validates :wish_list_id, presence: true
end
