class CommentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  load_and_authorize_resource  
  
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @publication = Publication.find(params[:publication_id])
    @comment = @publication.comments.new
  end

  def create
    @publication = Publication.find(params[:publication_id])
    @comment = @publication.comments.new(comment_params)
    @comment.user = current_user
    @comment.date_create = Date.today

    if @comment.save
      redirect_to comments_path, notice: 'Comentario agregado correctamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end

    def edit
      @comment = Comment.find(params[:id])
  end

  def update
      @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
          redirect_to @comment, notice: "Comentario actualizado correctamente"
      else
          render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path, notice: "Comentario eliminado correctamente"
  end

  private
  def comment_params
    params.require(:comment).permit(:content)

  end
end
