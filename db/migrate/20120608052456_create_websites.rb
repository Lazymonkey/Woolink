class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :link

      t.timestamps
    end
  end
end
