class AddStatusToUserBlogs < ActiveRecord::Migration
  def change
    add_column :user_blogs, :status, :string
    add_column :user_blogs, :click_count, :integer
    remove_column :user_blogs, :flag
  end
end
