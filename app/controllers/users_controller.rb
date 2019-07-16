class UsersController < ApplicationController
  def index
  end

  def show
  	@posts = Post.all
  	@user = User.find(params[:id])
  end
end
