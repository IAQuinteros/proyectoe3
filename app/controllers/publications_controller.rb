class PublicationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @publications = Publication.all
  end

  def show
    @publication = Publication.find(params[:id])
    @comments = @publication.comments.includes(:user)
  end

    def new
     @publication = Publication.new
    @publication.user_id = params[:user_id]
  end

  def create
      @publication = Publication.new(publication_params)
      if @publication.save
          redirect_to @publication, notice: 'Publicacion creada con exito'
      else
          render :new, status: :unprocessable_entity
      end
  end

  def edit
      @publication = Publication.find(params[:id])
  end

  def update
      @publication = Publication.find(params[:id])
      if @publication.update(publication_params)
          redirect_to @publication, notice: "Publicacion actualizada correctamente."
      else
          render :edit, status: :unprocessable_entity
      end
  end

    def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy
    redirect_to publications_path, notice: "Publicacion eliminada correctamente"
  end


  def by_user
    @user = User.find(params[:id])
    @publications = @user.publications.order(created_at: :desc)
    end

    private
  def publication_params
      params.require(:publication).permit(:publication_image, :description, :user_id, :data_create)
  end

end
