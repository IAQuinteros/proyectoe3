class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def show
    @like = Like.find(params[:id])
  end

  def new
    @like = Like.new
    @like.user_id = params[:user_id]
    @like.publication_id = params[:publication_id]
  end

  def create
    @like = Like.new(like_params)
    if @like.save
        redirect_to @like, notice: 'Like creado con exito'
    else 
      render :new, status: :unprocessable_entity
    end
  end

    def edit
      @like = Like.find(params[:id])
  end

  def update
      @like = Like.find(params[:id])
      if @like.update(like_params)
          redirect_to @like, notice: "Like actualizado correctamente"
      else
          render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to likes_path, notice: "Like eliminado correctamente"
  end

  private
  def like_params
    params.require(:like).permit(:date_create, :publication_id, :user_id)

  end
end