class UserBlogsController < ApplicationController
  before_filter :set_click_count, only: [:show]

  private
  def set_click_count
    @user_blog = UserBlog.find(params[:id])
    @user_blog.click_count = @user_blog.click_count.to_i + 1
    @user_blog.save
  end
end
