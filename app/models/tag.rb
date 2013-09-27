class Tag < ActiveRecord::Base
  has_many :tags_user_blogses, class_name: "TagsUserBlogses"
  has_many :user_blogs, through: :tags_user_blogses

  # attr_accessible :name
  validates :name, :uniqueness => true, :presence => true

  def user_blogs_count
    self.user_blogs.public_blog.count
  end
end
