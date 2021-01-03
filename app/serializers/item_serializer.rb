class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :price, :url, :image_url, :wish_list_id
  belongs_to :wish_list
end
