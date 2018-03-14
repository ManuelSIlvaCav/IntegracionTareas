class CommentsController < ApplicationController
  before_action :find_noticium, only: [:new, :show, :edit, :create, :destroy]

  def new
    @comment = Comment.new
  end

  def create
    @comment = @noticium.comments.create(comment_params)
    redirect_to noticium_path(@noticium)
  end

  def show
  end

  def index
  end

  def update
  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:nombre, :content)
    end

    def find_noticium
      @noticium = Noticium.find(params[:noticium_id])
    end
end
