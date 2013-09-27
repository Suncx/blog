class Admin::UserBlogsController < Admin::AdminApplicationController
  include ApplicationHelper

  respond_to :json

  def index
    @user_blogs = UserBlog.all.page(params[:page]).per(10)
  end

  def create
    @user_blog = current_user.user_blogs.new(user_blog_params)
    if @user_blog.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def update
    @user_blog = current_user.user_blogs.find(params[:id])
    if @user_blog.update_attributes(user_blog_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def preview_content
    preview_body = markdown(params[:content])
    render json: {preview_body: preview_body}, status: 200
  end

  private
  def user_blog_params
    params.require(:user_blog).permit(:user_id, :title, :content, :status,{:tag_ids => []})
  end
end
