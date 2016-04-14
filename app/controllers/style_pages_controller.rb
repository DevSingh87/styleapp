class StylePagesController < ApplicationController
  before_action :set_style_page, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @style_pages = StylePage.all
    respond_with(@style_pages)
  end

  def show
    respond_with(@style_page)
  end

  def new
    @style_page = StylePage.new
    respond_with(@style_page)
  end

  def edit
  end

  def create
    @style_page = StylePage.new(style_page_params)
    @style_page.user_id = current_user.id
    @style_page.save
    redirect_to root_path, :notice => "Your Page is created successfully."
  end

  def update
    @style_page.update(style_page_params)
    redirect_to root_path, :notice => "Your Page is updated successfully."
  end

  def destroy
    @style_page.destroy
    respond_with(@style_page)
  end

  private
    def set_style_page
      @style_page = StylePage.find(params[:id])
    end

    def style_page_params
      params.require(:style_page).permit(:title, :font_color, :font_style, :font_size, :user_id, :background_color, :font_family)
    end
end
