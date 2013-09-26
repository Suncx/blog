class Tag < ActiveRecord::Base
  has_many :tags_user_blogses
  has_many :user_blog, class_name: "TagsUserBlogs"

  # attr_accessible :name
  validates :name, :uniqueness => true, :presence => true
end
