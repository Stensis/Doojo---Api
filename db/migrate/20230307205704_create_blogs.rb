class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.date :published_at
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :img

      t.timestamps
    end
  end
end
