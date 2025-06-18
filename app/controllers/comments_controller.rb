class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

    def new
    @comment = Comment.new
    @comment.user_id = params[:user_id]
    @comment.publication_id = params[:publication_id]
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
        redirect_to @comment, notice: 'Comentario creado con exito'
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
    params.require(:comment).permit(:date_create, :content, :user_id, :publication_id, :actualization_date)

  end
end
