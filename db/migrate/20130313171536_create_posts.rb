class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :creator_id
      t.string :title
      t.string :description
      t.text :content
      t.string :cover
      t.integer :category_id
      t.datetime :published_at

      t.timestamps
    end
  end
end
