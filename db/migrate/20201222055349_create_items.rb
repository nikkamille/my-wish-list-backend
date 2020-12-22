class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :url
      t.string :image_url
      t.references :wish_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
