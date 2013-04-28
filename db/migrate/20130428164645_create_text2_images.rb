class CreateText2Images < ActiveRecord::Migration
  def change
    create_table :text2_images do |t|
      t.string :text
      t.text :url

      t.timestamps
    end
  end
end
