class Tag < ActiveRecord::Base
  has_many :tags_user_blogses, class_name: "TagsUserBlogses"
  has_many :user_blogs, through: :tags_user_blogses

  # attr_accessible :name
  validates :name, :uniqueness => true, :presence => true
end
