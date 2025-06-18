class LikesController < ApplicationController
  load_and_authorize_resource  
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
  @like = Like.new(
    user: current_user,
    publication_id: params[:publication_id],
    date_create: Date.today
  )
  if @like.save
    redirect_to likes_path, notice: '¡Like agregado!'
  else
    redirect_back fallback_location: publications_path, alert: @like.errors.full_messages.to_sentence
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


end