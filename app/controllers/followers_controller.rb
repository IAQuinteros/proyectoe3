class FollowersController < ApplicationController
  load_and_authorize_resource  

  def index
    @followers = Follower.all
  end

  def show
    @follower = Follower.find(params[:id])
  end

def new
    @follower = Follower.new
  end

  def create
    @follower = Follower.new(follower_params)
    if @follower.save
        redirect_to @follower, notice: 'Follow generado con exito'
    else 
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @follower = Follower.find(params[:id])
    @follower.destroy
    redirect_to followers_path, notice: "Lo has dejado de seguir"
  end

  private
  def follower_params
    params.require(:follower).permit(:user_id, :followed_user_id, :date_followers)

  end
end
