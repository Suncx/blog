class HomeController < ApplicationController
  def index
    @user_blogs = UserBlog.public_blog
    if params[:tag_id].to_i > 0
      @user_blogs = Tag.find(params[:tag_id]).user_blogs.public_blog
    end
    @user_blogs = @user_blogs.order("created_at desc").page(params[:page]).per(5)
  end
end
