class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.integer :admin_id
      t.integer :comments_count

      t.timestamps
    end
  end
end
