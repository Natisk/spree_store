class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.integer :comments_count

      t.timestamps
    end
  end
end
