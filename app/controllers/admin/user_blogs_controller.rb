class Admin::UserBlogsController < Admin::AdminApplicationController

  def create
    @user_blog = current_user.user_blogs.new(user_blog_params)
    if @user_blog.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def update
    binding.pry
    @user_blog = current_user.user_blogs.find(params[:id])
    if @user_blog.update_attributes(user_blog_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  private
  def user_blog_params
    params.require(:user_blog).permit(:user_id, :title, :content, {:tag_ids => []})
  end
end
