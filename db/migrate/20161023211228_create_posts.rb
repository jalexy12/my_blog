class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :posted_at
      t.boolean :published
      t.text :raw_content
      t.text :converted_content

      t.timestamps
    end
  end
end
