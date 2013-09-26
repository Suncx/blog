class CreateTagsUserBlogs < ActiveRecord::Migration
  def change
    create_table :tags_user_blogses do |t|
      t.integer :tag_id
      t.integer :user_blog_id

      t.timestamps
    end
    add_index :tags_user_blogses, :tag_id
    add_index :tags_user_blogses, :user_blog_id
  end
end
