class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :user
      t.string :description
      t.string :ip
      t.integer :rating
      t.integer :app_id

      t.timestamps null: false
    end
  end
end
