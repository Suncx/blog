class TagsUserBlogses < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user_blog
end
