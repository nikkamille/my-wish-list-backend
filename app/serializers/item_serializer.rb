class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :url, :image_url
  belongs_to :wish_list
end
