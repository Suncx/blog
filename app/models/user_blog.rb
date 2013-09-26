class UserBlog < ActiveRecord::Base
  has_many :tags_user_blogses, class_name: "TagsUserBlogses"
  has_many :tags, through: :tags_user_blogses

  belongs_to :user

  STATUS = [:public, :private]
end
