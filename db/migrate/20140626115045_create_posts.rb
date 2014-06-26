class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :comments_count

      t.timestamps
    end
  end
end
