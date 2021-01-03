class WishListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :items
end
