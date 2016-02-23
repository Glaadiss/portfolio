class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :git
      t.string :link
      t.string :image
      t.text :description
      t.string :name
      t.string :category

      t.timestamps null: false
    end
  end
end
