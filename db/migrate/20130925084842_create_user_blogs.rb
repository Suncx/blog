class CreateUserBlogs < ActiveRecord::Migration
  def change
    create_table :user_blogs do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.boolean :flag

      t.timestamps
    end

    add_index :user_blogs, :user_id
    add_index :user_blogs, :flag
  end
end
