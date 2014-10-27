class BlogitosController < ApplicationController

  before_action do
    if session[:user_id].present?
    else
      redirect_to sign_in_path
    end
  end

  def index
    @users = User.all
    @blogitos = current_user.blogitos.order("created_at desc")
    @blogito = Blogito.new
  end

  def post
    @post = Blogito.new(params.require(:blogito).permit(:serious_blogito))
    @post.user = current_user
    if @post.save
      redirect_to root_path
    else
      render :index
    end
  end

  

end
