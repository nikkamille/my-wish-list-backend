class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :price, :url, :image_url
  belongs_to :wish_list
end
