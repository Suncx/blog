class Admin::TagsController < Admin::AdminApplicationController

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update_attributes(tag_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
