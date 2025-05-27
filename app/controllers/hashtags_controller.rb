class HashtagsController < ApplicationController
  def index
    @hashtags = Hashtag.all
  end

  def show
    @hashtag = Hashtag.find(params[:id])
  end

  def new
    @hashtag = Hashtag.new
  end

  def create
    @hashtag = Hashtag.new(hashtag_params)
    if @hashtag.save
        redirect_to @hashtag, notice: 'Hashtag creado con exito'
    else 
      render :new, status: :unprocessable_entity
    end
  end

    def edit
      @hashtag = Hashtag.find(params[:id])
  end

  def update
      @hashtag = Hashtag.find(params[:id])
      if @hashtag.update(hashtag_params)
          redirect_to @hashtag, notice: "Hashtag actualizado correctamente"
      else
          render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @hashtag = Hashtag.find(params[:id])
    @hashtag.destroy
    redirect_to hashtags_path, notice: "Hashtag eliminado correctamente"
  end

  private
  def hashtag_params
    params.require(:hashtag).permit(:name)

  end
end

